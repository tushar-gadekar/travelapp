import 'package:travelapp/domain/travel_assistant/entities/flight.dart';
import 'package:travelapp/domain/travel_assistant/entities/travel_requirement.dart';

abstract class IAIAssistantRepository {
  Future<TravelRequirement> extractRequirements(String userPrompt, String conversationHistory);
}

abstract class IFlightRepository {
  Future<List<Flight>> searchFlights(TravelRequirement requirement);
}

abstract class IVoiceRepository {
  Future<void> initSpeech();
  Future<void> startListening(Function(String) onResult);
  Future<void> stopListening();
  Future<void> speak(String text);
  Future<void> stopSpeaking();
}
