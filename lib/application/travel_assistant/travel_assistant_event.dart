part of 'travel_assistant_bloc.dart';

@freezed
class TravelAssistantEvent with _$TravelAssistantEvent {
  const factory TravelAssistantEvent.initAssistant() = _InitAssistant;
  const factory TravelAssistantEvent.startListening() = _StartListening;
  const factory TravelAssistantEvent.stopListening() = _StopListening;
  const factory TravelAssistantEvent.sendUserMessage(String text, {required bool isAudio}) = _SendUserMessage;
  const factory TravelAssistantEvent.confirmBooking(Flight flight) = _ConfirmBooking;
}
