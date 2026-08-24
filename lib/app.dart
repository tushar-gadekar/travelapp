import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelapp/locator.dart';
import 'package:travelapp/application/auth/auth_bloc.dart';
import 'package:travelapp/application/travel_assistant/travel_assistant_bloc.dart';
import 'package:travelapp/presentation/auth/login_screen.dart';

Future<void> initialSetup() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
}

Future<void> runAppWith() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => locator<AuthBloc>(),
        ),
        BlocProvider(
          create: (_) => locator<TravelAssistantBloc>()..add(const TravelAssistantEvent.initAssistant()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'AI Travel Assistant',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const LoginScreen(),
      ),
    );
  }
}
