import 'package:travelapp/domain/travel_assistant/entities/flight.dart';
import 'package:travelapp/domain/travel_assistant/entities/travel_requirement.dart';
import 'package:travelapp/domain/travel_assistant/repository/travel_interfaces.dart';
import 'package:travelapp/infrastructure/travel_assistant/data_source/ai_remote_data_source.dart';
import 'package:travelapp/infrastructure/travel_assistant/data_source/flight_local_data_source.dart';

class AIAssistantRepositoryImpl implements IAIAssistantRepository {
  final AIRemoteDataSource remoteDataSource;

  AIAssistantRepositoryImpl(this.remoteDataSource);

  @override
  Future<TravelRequirement> extractRequirements(String userPrompt, String conversationHistory) async {
    return await remoteDataSource.extractRequirements(userPrompt, conversationHistory);
  }
}

class FlightRepositoryImpl implements IFlightRepository {
  final FlightLocalDataSource localDataSource;

  FlightRepositoryImpl(this.localDataSource);

  @override
  Future<List<Flight>> searchFlights(TravelRequirement requirement) async {
    return await localDataSource.searchFlights(requirement);
  }
}
