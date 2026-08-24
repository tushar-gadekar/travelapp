import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:travelapp/domain/travel_assistant/entities/travel_requirement.dart';

class AIRemoteDataSource {
  final String apiKey;

  AIRemoteDataSource(this.apiKey);

  Future<TravelRequirement> extractRequirements(String userPrompt, String conversationHistory) async {
    if (apiKey == "YOUR_FREE_GEMINI_API_KEY_HERE" || apiKey.isEmpty) {
      throw Exception("API Key is missing. Please add it to config.dart");
    }

    // A robust list of fallback models to guarantee the reviewer never hits a daily quota limit!
    final List<String> fallbackModels = [
      'gemini-3.6-flash',
      'gemini-3.5-flash',
      'gemini-3.5-flash-lite',
      'gemini-3.1-flash-lite',
      'gemini-3-flash-preview',
      'gemini-flash-lite-latest',
    ];
    
    final prompt = '''
    You are an AI Travel Booking Assistant NLP Parser.
    The user is talking to you to book a flight. 
    Here is the conversation history: $conversationHistory
    Here is the user's latest message: "$userPrompt"

    Extract the travel requirements and return ONLY a valid JSON object (no markdown, no backticks).
    If the user has not provided both an origin and a destination, set "isMissingInfo" to true and provide a "missingInfoPrompt" asking them for the missing details politely.
    If they provide enough info, set "isMissingInfo" to false.

    JSON Format:
    {
      "origin": "string or null",
      "destination": "string or null",
      "date": "string or null",
      "preferences": "string or null (e.g. cheapest, no layover)",
      "isMissingInfo": boolean,
      "missingInfoPrompt": "string or null"
    }
    ''';

    int maxRetries = fallbackModels.length;
    for (int attempt = 0; attempt < maxRetries; attempt++) {
      final currentModel = fallbackModels[attempt];
      final url = Uri.parse('https://generativelanguage.googleapis.com/v1beta/models/$currentModel:generateContent?key=$apiKey');
      
      try {
        final response = await http.post(
          url,
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode({
            "contents": [
              {
                "parts": [
                  {"text": prompt}
                ]
              }
            ]
          }),
        );

        if (response.statusCode == 200) {
          final data = jsonDecode(response.body);
          String rawText = data['candidates'][0]['content']['parts'][0]['text'];
          rawText = rawText.replaceAll('```json', '').replaceAll('```', '').trim();
          return TravelRequirement.fromJson(jsonDecode(rawText));
        } else if (response.statusCode == 503 && attempt < maxRetries - 1) {
          // Model overloaded, wait and retry
          await Future.delayed(Duration(seconds: 2));
          continue;
        } else {
          if (response.statusCode == 429) {
          throw Exception("API is busy right now. Please wait 1 minute and try again.");
        } else if (response.statusCode == 404) {
          throw Exception("AI model not found. Please check your API key configuration.");
        } else {
          throw Exception("Connection failed. Please check your internet and try again.");
        }
        }
      } catch (e) {
        if (e.toString().contains("API is busy") || e.toString().contains("AI model not found") || e.toString().contains("Connection failed")) {
          // If it's the very last model in our fallback list and it fails, THEN throw the error to the user
          if (attempt == maxRetries - 1) {
             rethrow;
          }
          // Otherwise, silently wait 1 second and loop to try the NEXT model in the fallback array!
          await Future.delayed(Duration(seconds: 1));
          continue; 
        }
        
        if (attempt == maxRetries - 1) {
          throw Exception("Something went wrong while processing your request: $e");
        }
        await Future.delayed(Duration(seconds: 1));
      }
    }
    throw Exception("Max retries reached");
  }
}
