# AI Travel Booking Assistant

A voice-based AI travel assistant built with Flutter, designed to mimic a natural conversation with a travel agent. It uses the Gemini API to extract travel requirements from natural language and searches a local mock dataset for matching flights.

## Features Completed
- **Voice Conversation**: Full Speech-to-Text and Text-to-Speech integration.
- **AI-Powered Requirement Extraction**: Uses Gemini to understand conversational intent, handle changing requirements, and ask follow-up questions when information is missing.
- **Mock Booking**: Complete booking flow generating a mock reference ID.
- **Robust Error Handling**: Handles API failures, empty search results, and missing travel info seamlessly.

## Setup Instructions
1. Clone this repository.
2. Run `flutter pub get` to install dependencies.
3. Ensure you have run `flutter pub run build_runner build --delete-conflicting-outputs` if you make changes to the generated code.
4. Replace the Gemini API Key in `lib/config.dart` with your own key if needed (the current mock setup uses a free key).
5. Run the app using `flutter run`.
   *(Note: For the best voice experience, run on a physical device, as emulators sometimes struggle with microphone permissions.)*

## Architecture & Technical Decisions
- **Domain-Driven Design (DDD)**: The application is strictly separated into Domain, Infrastructure, Application, and Presentation layers. This ensures high scalability, decoupling, and maintainability.
- **Dependency Injection**: We use `GetIt` as a service locator (`lib/locator.dart`). All Data Sources, Repositories, and BLoCs are registered as Singletons, ensuring dependencies are cleanly passed without tight coupling.
- **DTOs vs Entities**: The raw JSON mock data is parsed using `FlightDto` in the Infrastructure layer, which is then mapped to the pure `Flight` entity in the Domain layer using `.toDomain()`.

## State Management Approach
- **BLoC + Freezed**: We use the BLoC pattern for state management. All BLoC events and states are defined as strict **Freezed Unions**.
- **Safe UI Rendering**: The UI utilizes `state.maybeMap()` to ensure that the view strictly reacts to explicit states (like `ready`, `error`, `bookingSuccess`), making UI crashes due to unhandled states virtually impossible.

## AI Integration
- The app uses the **Gemini API**. Instead of trying to force the AI to return raw JSON directly (which can be flaky), we pass the entire conversation history to the AI and ask it to extract a structured `TravelRequirement` object.
- If the AI determines the user hasn't provided enough info (e.g. missing a destination), it sets `isMissingInfo = true` and generates a contextual follow-up prompt.

## Known Limitations
- The Voice-to-Text (STT) experience is dependent on the native OS voice recognition engine, which requires internet connectivity and proper microphone permissions.
- The mock dataset (`assets/json/mock_flights.json`) is currently small and static for demonstration purposes.
