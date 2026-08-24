import "dart:convert";
import "package:flutter/services.dart";
import "package:travelapp/domain/travel_assistant/entities/flight.dart";
import "package:travelapp/domain/travel_assistant/entities/travel_requirement.dart";
import "package:travelapp/infrastructure/travel_assistant/dtos/flight_dto.dart";

class FlightLocalDataSource {
  Future<List<Flight>> searchFlights(TravelRequirement requirement) async {
    await Future.delayed(const Duration(seconds: 1));

    final String jsonString = await rootBundle.loadString("assets/json/mock_flights.json");
    List<dynamic> jsonList = jsonDecode(jsonString);
    
    List<Flight> allFlights = jsonList.map((json) => FlightDto.fromJson(json).toDomain()).toList();

    return allFlights.where((flight) {
      bool matches = true;
      if (requirement.origin != null && requirement.origin!.isNotEmpty) {
        matches = matches && flight.origin.toLowerCase().contains(requirement.origin!.toLowerCase());
      }
      if (requirement.destination != null && requirement.destination!.isNotEmpty) {
        matches = matches && flight.destination.toLowerCase().contains(requirement.destination!.toLowerCase());
      }
      if (requirement.preferences != null && requirement.preferences!.toLowerCase().contains("no layover")) {
        matches = matches && flight.layovers == 0;
      }
      return matches;
    }).toList();
  }
}
