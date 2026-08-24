import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelapp/application/travel_assistant/travel_assistant_bloc.dart';
import 'package:travelapp/presentation/travel_assistant/widgets/chat_bubble.dart';
import 'package:travelapp/presentation/travel_assistant/widgets/flight_card.dart';
import 'package:travelapp/domain/core/error/error_utils.dart';
import 'package:travelapp/domain/core/success/success_utils.dart';

class TravelAssistantScreen extends StatefulWidget {
  const TravelAssistantScreen({super.key});

  @override
  State<TravelAssistantScreen> createState() => _TravelAssistantScreenState();
}

class _TravelAssistantScreenState extends State<TravelAssistantScreen> {
  final TextEditingController _textController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  void _scrollToBottom() {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent + 300,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F5F9), // Light grayish-blue background
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(Icons.flight_takeoff, color: Colors.cyanAccent),
            SizedBox(width: 12),
            Text('AI Travel Booking App', style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.2)),
          ],
        ),
        backgroundColor: const Color(0xFF0F2027),
        foregroundColor: Colors.white,
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF0F2027), Color(0xFF203A43)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: BlocConsumer<TravelAssistantBloc, TravelAssistantState>(
        listener: (context, state) {
          state.maybeMap(
            ready: (_) {
              Future.delayed(const Duration(milliseconds: 100), _scrollToBottom);
            },
            error: (e) {
              ErrorUtils.handleError(context, e.error);
            },
            bookingSuccess: (s) {
              SuccessUtils.handleSuccess(context, 'Booking Confirmed! Ref: ${s.bookingReference}');
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.maybeMap(
            ready: (s) {
              return Column(
                children: [
                  Expanded(
                    child: ListView(
                      controller: _scrollController,
                      padding: const EdgeInsets.only(top: 16, bottom: 24),
                      children: [
                        ...s.messages.map((message) => ChatBubble(message: message)),
                        if (s.suggestedFlights.isNotEmpty)
                          Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                                  child: Text('Suggested Flights', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey, fontSize: 14)),
                                ),
                                ...s.suggestedFlights.map((flight) => FlightCard(
                                      flight: flight,
                                      onBook: () {
                                        context.read<TravelAssistantBloc>().add(TravelAssistantEvent.confirmBooking(flight));
                                      },
                                    )),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                  _buildInputArea(context, s.isListening),
                ],
              );
            },
            orElse: () => const Center(child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF2C5364)))),
          );
        },
      ),
    );
  }

  Widget _buildInputArea(BuildContext context, bool isListening) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black.withAlpha(12), offset: const Offset(0, -4), blurRadius: 10)
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: TextField(
                    controller: _textController,
                    decoration: const InputDecoration(
                      hintText: 'Type your request...',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                    ),
                    onSubmitted: (text) {
                      if (text.isNotEmpty) {
                        context.read<TravelAssistantBloc>().add(TravelAssistantEvent.sendUserMessage(text, isAudio: false));
                        _textController.clear();
                      }
                    },
                  ),
                ),
              ),
              const SizedBox(width: 8),
              GestureDetector(
                onTap: () {
                  if (isListening) {
                    context.read<TravelAssistantBloc>().add(const TravelAssistantEvent.stopListening());
                  } else {
                    context.read<TravelAssistantBloc>().add(const TravelAssistantEvent.startListening());
                  }
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  padding: EdgeInsets.all(isListening ? 16 : 14),
                  decoration: BoxDecoration(
                    gradient: isListening 
                      ? const LinearGradient(colors: [Colors.redAccent, Colors.red])
                      : const LinearGradient(colors: [Color(0xFF203A43), Color(0xFF2C5364)]),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(color: (isListening ? Colors.red : const Color(0xFF2C5364)).withAlpha(102), blurRadius: 8, offset: const Offset(0, 4))
                    ]
                  ),
                  child: Icon(isListening ? Icons.mic : Icons.mic_none, color: Colors.white, size: 24),
                ),
              ),
              const SizedBox(width: 4),
              IconButton(
                icon: const Icon(Icons.send_rounded, color: Color(0xFF203A43), size: 28),
                onPressed: () {
                  if (_textController.text.isNotEmpty) {
                    context.read<TravelAssistantBloc>().add(TravelAssistantEvent.sendUserMessage(_textController.text, isAudio: false));
                    _textController.clear();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
