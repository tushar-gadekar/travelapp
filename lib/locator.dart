import 'package:get_it/get_it.dart';
import 'package:travelapp/config.dart';
import 'package:travelapp/domain/travel_assistant/repository/travel_interfaces.dart';
import 'package:travelapp/infrastructure/travel_assistant/data_source/ai_remote_data_source.dart';
import 'package:travelapp/infrastructure/travel_assistant/data_source/flight_local_data_source.dart';
import 'package:travelapp/infrastructure/travel_assistant/repository/travel_repositories_impl.dart';
import 'package:travelapp/infrastructure/travel_assistant/repository/voice_repository_impl.dart';
import 'package:travelapp/application/travel_assistant/travel_assistant_bloc.dart';
import 'package:travelapp/application/auth/auth_bloc.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton<Config>(() => Config());
  locator.registerLazySingleton<FlightLocalDataSource>(() => FlightLocalDataSource());
  locator.registerLazySingleton<AIRemoteDataSource>(() => AIRemoteDataSource(locator<Config>().geminiApiKey));
  locator.registerLazySingleton<IFlightRepository>(() => FlightRepositoryImpl(locator<FlightLocalDataSource>()));
  locator.registerLazySingleton<IAIAssistantRepository>(() => AIAssistantRepositoryImpl(locator<AIRemoteDataSource>()));
  locator.registerLazySingleton<IVoiceRepository>(() => VoiceRepositoryImpl());
  
  locator.registerLazySingleton<AuthBloc>(() => AuthBloc());
  locator.registerLazySingleton<TravelAssistantBloc>(() => TravelAssistantBloc(
        locator<IAIAssistantRepository>(),
        locator<IFlightRepository>(),
        locator<IVoiceRepository>(),
      ));
}
