import 'package:flutter/foundation.dart';
import 'package:travelapp/domain/travel_assistant/repository/travel_interfaces.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:flutter_tts/flutter_tts.dart';

class VoiceRepositoryImpl implements IVoiceRepository {
  final stt.SpeechToText _speech = stt.SpeechToText();
  final FlutterTts _flutterTts = FlutterTts();
  bool _isSpeechInitialized = false;

  @override
  Future<void> initSpeech() async {
    if (!_isSpeechInitialized) {
      _isSpeechInitialized = await _speech.initialize(
        onError: (error) => debugPrint('Error initializing speech: $error'),
      );
    }
    
    await _flutterTts.setLanguage("en-US");
    await _flutterTts.setSpeechRate(0.5);
    await _flutterTts.setVolume(1.0);
    await _flutterTts.setPitch(1.0);
  }

  @override
  Future<void> startListening(Function(String) onResult) async {
    if (_isSpeechInitialized) {
      await _speech.listen(
        onResult: (result) {
          onResult(result.recognizedWords);
        },
      );
    }
  }

  @override
  Future<void> stopListening() async {
    await _speech.stop();
  }

  @override
  Future<void> speak(String text) async {
    await _flutterTts.speak(text);
  }

  @override
  Future<void> stopSpeaking() async {
    await _flutterTts.stop();
  }
}
