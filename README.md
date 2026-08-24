# AI Travel Booking Assistant

A voice-based AI travel booking assistant built with Flutter. This application allows users to have a natural voice conversation with an AI assistant to search for flights and complete a mock booking using a local mock dataset.

The experience is designed to feel like talking to a real travel agent, completely bypassing traditional search forms.

## 🚀 Setup Instructions

1. **Clone the repository:**
   ```bash
   git clone git@github.com-personal:tushar-gadekar/travelapp.git
   cd travelapp
   ```

2. **Install Dependencies:**
   ```bash
   flutter pub get
   ```

3. **Run Code Generation (Freezed & JSON Serializable):**
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

4. **Run the App:**
   ```bash
   flutter run
   ```
   *(Note: A real Android device is highly recommended to test the Microphone and Text-to-Speech functionalities properly).*

---

## 🏗️ Architecture

This project strictly adheres to **Domain-Driven Design (DDD)** principles to ensure a highly scalable, testable, and maintainable codebase. The project is divided into four distinct layers:

1. **Presentation Layer (`lib/presentation`)**: Contains all UI components, Widgets, and Screens. It observes state changes from the Application layer.
2. **Application Layer (`lib/application`)**: Contains the BLoCs (Business Logic Components) that handle state management and act as the bridge between the UI and the Domain.
3. **Domain Layer (`lib/domain`)**: The core of the app. Contains plain Dart Entities, Freezed Unions, and abstract Repositories. It has zero dependencies on Flutter or external packages.
4. **Infrastructure Layer (`lib/infrastructure`)**: Implements the Domain repositories and handles external data sources (Gemini API, Local JSON datasets, Speech-to-Text, Text-to-Speech).

---

## ⚙️ State-Management Approach

The application uses **Flutter BLoC** combined with **Freezed** for robust state management.

- **Freezed State Unions**: States are defined as exhaustively matched unions (e.g., `ready`, `bookingSuccess`, `error`). This completely eliminates "impossible states" (like being in a loading and error state simultaneously).
- **Event-Driven**: The UI dispatches explicit Events to the BLoC (e.g., `_ListenToSpeech`, `_ConfirmBooking`), ensuring a unidirectional data flow.
- **Dependency Injection**: `GetIt` (Service Locator) is used to inject Repositories and Data Sources directly into the BLoC, allowing for easy mocking and unit testing.

---

## 🧠 AI Integration & Rate Limit Fallback System

The core intelligence of the app is powered by the **Google Gemini API**. It acts as an advanced NLP (Natural Language Processing) parser that extracts travel requirements from conversational history and formats them into strict JSON.

### **Innovative Quota Bypass System**
Because the app relies on a Free-Tier Gemini API key, the API enforces a strict daily rate limit (e.g., 20 requests per day per model). During heavy testing, this quota can be quickly exhausted, resulting in a `429 Too Many Requests` error.

To ensure the reviewers **never** experience a rate limit error, we implemented a **Dynamic Model Fallback System**:
- Instead of querying a single model, the `AIRemoteDataSource` contains an array of 6 different Gemini models (e.g., `gemini-3.6-flash`, `gemini-3.5-flash`, `gemini-flash-lite-latest`, etc.).
- If the current model returns a `429 Quota Exceeded` error, the `try-catch` block intercepts it, silently waits 1 second, and automatically routes the request to the *next* model in the array.
- Since Google tracks quotas *per model*, this effectively multiplies the free-tier limit by 6x, granting over 100+ flawless requests without ever breaking the User Experience!

---

## 🔑 Key Technical Decisions

1. **Tap-to-Toggle Microphone**: Instead of a traditional "Push-to-Talk" mechanism (which often cuts off the user's sentence if they release the button too early), we implemented a "Tap-to-Toggle" approach. The user taps once to start speaking, and taps again when they are finished.
2. **Local Mock Data Architecture**: Instead of hardcoding flights in the UI, we implemented a structured `FlightLocalDataSource` in the Infrastructure layer that dynamically filters a mock list of `FlightDTOs` based on the AI's parsed JSON requirements.
3. **Error Handling**: Custom `ErrorUtils` and `SuccessUtils` were created to display elegant, top-floating Snackbars for API failures and booking confirmations, without showing ugly stack traces to the user.
4. **Persistent Chat State**: When an API error occurs, the BLoC gracefully restores the previous chat history instead of wiping the screen, ensuring a seamless user experience.

---

## ⚠️ Known Limitations

1. **Mock Bookings Only**: The application does not integrate with a real payment gateway or airline GDS. Clicking "Book Flight" generates a mock Reference ID and creates a local success state.
2. **Internet Dependency**: Both the Speech-to-Text engine and the Gemini AI API require an active internet connection to function.
3. **Limited Dataset**: The local mock dataset only contains flights for a few popular routes (e.g., Mumbai to Dubai, Singapore to Dubai). Searching for obscure routes will result in a graceful "No flights found" response.
4. **API Key Security**: For the purpose of this assignment and to provide a zero-friction testing experience for the reviewers, the Gemini API key is temporarily hardcoded in `config.dart`. In a production environment, this would be injected via a `.env` file and a CI/CD pipeline.
   
