import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travelapp/domain/travel_assistant/entities/flight.dart';
import 'package:travelapp/domain/travel_assistant/entities/chat_message.dart';
import 'package:travelapp/domain/travel_assistant/repository/travel_interfaces.dart';

part 'travel_assistant_event.dart';
part 'travel_assistant_state.dart';
part 'travel_assistant_bloc.freezed.dart';

class TravelAssistantBloc extends Bloc<TravelAssistantEvent, TravelAssistantState> {
  final IAIAssistantRepository _aiRepository;
  final IFlightRepository _flightRepository;
  final IVoiceRepository _voiceRepository;

  TravelAssistantBloc(
      this._aiRepository, this._flightRepository, this._voiceRepository)
      : super(const TravelAssistantState.initial()) {
    on<TravelAssistantEvent>((event, emit) async {
      await event.map(
        initAssistant: (e) async => await _onInit(e, emit),
        startListening: (e) async => await _onStartListening(e, emit),
        stopListening: (e) async => await _onStopListening(e, emit),
        sendUserMessage: (e) async => await _onSendUserMessage(e, emit),
        confirmBooking: (e) async => await _onConfirmBooking(e, emit),
      );
    });
  }

  Future<void> _onInit(_InitAssistant event, Emitter<TravelAssistantState> emit) async {
    await _voiceRepository.initSpeech();
    
    final initialMessage = ChatMessage(
      id: DateTime.now().toString(),
      text: "Hello! I am your AI Travel Assistant. Where would you like to travel today?",
      isUser: false,
      timestamp: DateTime.now(),
    );
    
    await _voiceRepository.speak(initialMessage.text);
    emit(TravelAssistantState.ready(messages: [initialMessage]));
  }

  String _currentRecognizedWords = "";

  Future<void> _onStartListening(_StartListening event, Emitter<TravelAssistantState> emit) async {
    await state.maybeMap(
      ready: (s) async {
        _currentRecognizedWords = "";
        emit(s.copyWith(isListening: true));
        await _voiceRepository.startListening((recognizedText) {
            _currentRecognizedWords = recognizedText;
        });
      },
      orElse: () {},
    );
  }

  Future<void> _onStopListening(_StopListening event, Emitter<TravelAssistantState> emit) async {
    await _voiceRepository.stopListening();
    
    if (_currentRecognizedWords.trim().isNotEmpty) {
       add(TravelAssistantEvent.sendUserMessage(_currentRecognizedWords.trim(), isAudio: true));
       _currentRecognizedWords = "";
    }

    await state.maybeMap(
      ready: (s) async {
        emit(s.copyWith(isListening: false));
      },
      orElse: () {},
    );
  }

  Future<void> _onSendUserMessage(_SendUserMessage event, Emitter<TravelAssistantState> emit) async {
    await state.maybeMap(
      ready: (s) async {
        final userMsg = ChatMessage(
          id: DateTime.now().toString(),
          text: event.text,
          isUser: true,
          timestamp: DateTime.now(),
          isAudio: event.isAudio,
        );

        final updatedMessages = List<ChatMessage>.from(s.messages)..add(userMsg);
        emit(s.copyWith(messages: updatedMessages, isLoadingAI: true));

        try {
          String history = updatedMessages.map((m) => "${m.isUser ? 'User' : 'Assistant'}: ${m.text}").join("\n");
          final requirements = await _aiRepository.extractRequirements(event.text, history);

          if (requirements.isMissingInfo) {
            final reply = requirements.missingInfoPrompt ?? "I need a bit more info.";
            final aiMsg = ChatMessage(id: DateTime.now().toString(), text: reply, isUser: false, timestamp: DateTime.now());
            updatedMessages.add(aiMsg);
            _voiceRepository.speak(reply);
            emit(s.copyWith(messages: updatedMessages, isLoadingAI: false));
          } else {
            final flights = await _flightRepository.searchFlights(requirements);
            final reply = flights.isEmpty ? "No flights found." : "Found ${flights.length} flights.";
            final aiMsg = ChatMessage(id: DateTime.now().toString(), text: reply, isUser: false, timestamp: DateTime.now());
            updatedMessages.add(aiMsg);
            _voiceRepository.speak(reply);
            emit(s.copyWith(messages: updatedMessages, isLoadingAI: false, suggestedFlights: flights));
          }
        } catch (e) {
            emit(TravelAssistantState.error('AI Failed: ${e.toString()}'));
            emit(s.copyWith(messages: updatedMessages, isLoadingAI: false));
        }
      },
      orElse: () {},
    );
  }

  Future<void> _onConfirmBooking(_ConfirmBooking event, Emitter<TravelAssistantState> emit) async {
    final ref = "BKG-${DateTime.now().millisecondsSinceEpoch.toString().substring(5)}";
    final successMsg = "Booking confirmed! Ref: $ref";
    await _voiceRepository.speak(successMsg);
    
    // Save the current ready state so we don't lose the chat UI
    final previousState = state;
    
    // Emit the success state so the UI listener shows the Snackbar
    emit(TravelAssistantState.bookingSuccess(ref));
    
    // Instantly revert back to the ready state so the chat remains visible
    previousState.maybeMap(
      ready: (s) {
        // Create a new message confirming the booking in the chat
        final aiMsg = ChatMessage(id: DateTime.now().toString(), text: "✅ $successMsg", isUser: false, timestamp: DateTime.now());
        final updatedMessages = List<ChatMessage>.from(s.messages)..add(aiMsg);
        
        // Clear suggested flights so they cannot be booked again
        emit(s.copyWith(messages: updatedMessages, suggestedFlights: []));
      },
      orElse: () {},
    );
  }
}
