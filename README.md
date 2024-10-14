# User Registration App

A Flutter application for user registration and login using Firebase.

## Features

- User registration
- User login
- Password visibility toggle
- Navigation to sign-up page

## Technologies Used

- Dart
- Flutter
- Firebase Authentication
- Firebase Core

## Getting Started

### Prerequisites

- Flutter SDK
- Dart SDK
- Firebase account

### Installation

1. Clone the repository:
    ```sh
    git clone https://github.com/ArdaKoksall/user_registration.git
    ```
2. Navigate to the project directory:
    ```sh
    cd user_registration
    ```
3. Install dependencies:
    ```sh
    flutter pub get
    ```

### Firebase Setup

1. Go to the [Firebase Console](https://console.firebase.google.com/).
2. Create a new project.
3. Add an Android app to your project.
4. Follow the instructions to download the `google-services.json` file.
5. Place the `google-services.json` file in the `android/app` directory.
6. Initialize Firebase in your Flutter app by following the [Firebase setup instructions](https://firebase.flutter.dev/docs/overview).

### Running the App

1. Connect your device or start an emulator.
2. Run the app:
    ```sh
    flutter run
    ```

## Usage

- Enter your email and password to log in.
- If you don't have an account, click on "Create Account" to sign up.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request.

## License

This project is licensed under the MIT License.