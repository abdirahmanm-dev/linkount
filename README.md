# Linkount

A personal finance / shared accounting Flutter app — currently under active development.

## Status
🚧 Early development — core architecture and theming in progress.

## Tech Stack
- Flutter & Dart
- Firebase
- Riverpod (state management)

## Architecture
This project follows a clean, layered architecture with strict separation of concerns:

```
lib/
├── screens/       # UI only
├── widgets/        # Shared reusable widgets
├── models/         # Data definitions
├── repositories/   # Bridge between services and providers
├── services/       # Raw external communication (Firebase, APIs)
├── providers/      # State management (Riverpod)
└── core/           # Theme, routing, constants, utils
```

## Getting Started
This project is not yet ready for public use or contribution.
