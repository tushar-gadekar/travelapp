part of 'travel_assistant_bloc.dart';

@freezed
class TravelAssistantState with _$TravelAssistantState {
  const factory TravelAssistantState.initial() = _Initial;
  const factory TravelAssistantState.ready({
    required List<ChatMessage> messages,
    @Default([]) List<Flight> suggestedFlights,
    @Default(false) bool isListening,
    @Default(false) bool isLoadingAI,
  }) = _Ready;
  const factory TravelAssistantState.bookingSuccess(String bookingReference) = _BookingSuccess;
  const factory TravelAssistantState.error(String error) = _Error;
}
