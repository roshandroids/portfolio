# 🌐 Personal Portfolio (Flutter Web + Mobile)

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![Firebase](https://img.shields.io/badge/Firebase-FFCA28?style=for-the-badge&logo=firebase&logoColor=black)
![License: MIT](https://img.shields.io/badge/License-MIT-green.svg?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Active-success?style=for-the-badge)

A modern, responsive personal portfolio website built with **Flutter** using a **Domain-Driven Design (DDD)** inspired folder structure.
This project showcases my skills, projects, and experience, with support for **dynamic theming** and scalable architecture.

---

## 🔗 Live Demo

👉 [View Live Portfolio](https://your-demo-link.com)
_(Replace this link with your deployed site once live)_

---

## 📸 Screenshots

| Mobile View                                         | Desktop View                                          |
| --------------------------------------------------- | ----------------------------------------------------- |
| ![Mobile Screenshot](assets/screenshots/mobile.png) | ![Desktop Screenshot](assets/screenshots/desktop.png) |

_(Replace the placeholder images with your actual screenshots from `assets/screenshots/`)_

---

## 📁 Folder Structure

```bash
lib/
├── app/                         # App-level configuration (router, entry widgets)
│   ├── app.dart
│   └── router.dart
│
├── core/                        # Shared utilities & cross-cutting concerns
│   ├── animations/              # Reusable animations
│   ├── app_state/               # Global state (e.g. ThemeNotifier)
│   ├── configs/                 # App configs (sizes, strings, etc.)
│   ├── errors/                  # Custom exceptions and failure handling
│   ├── extensions/              # Dart extension methods
│   ├── models/                  # Global/shared models
│   ├── routes/                  # Route names & helpers
│   ├── services/                # Core services (network, storage, etc.)
│   │   ├── http/                # HTTP client and API layer
│   │   └── storage/             # Local storage utilities
│   ├── theme/                   # Light/Dark themes, typography, color scheme
│   ├── utils/                   # Helpers (validators, responsive utils)
│   └── widgets/                 # Reusable shared widgets
│       └── loaders/             # Loading indicators
│
├── features/                    # Feature-based modules (DDD structure)
│   ├── auth/                    # Authentication (if needed)
│   │   ├── application/         # State management & use cases
│   │   ├── infrastructure/      # Data layer (models, repositories)
│   │   │   ├── models/
│   │   │   └── repositories/
│   │   └── presentation/        # UI layer
│   │       ├── pages/
│   │       └── widgets/
│   │
│   ├── movies/                  # Example feature (replace with your content)
│   │   ├── application/
│   │   ├── infrastructure/
│   │   │   ├── models/
│   │   │   └── repositories/
│   │   └── presentation/
│   │       ├── pages/
│   │       └── widgets/
│
├── firebase_options.dart         # Firebase configuration (if used)
└── main.dart                     # App entry point
```

---

## 🧪 Tests

```bash
test/
├── core/
│   ├── app_state/
│   ├── configs/
│   ├── extensions/
│   ├── models/
│   ├── services/
│   ├── theme/
│   ├── utils/
│   └── widgets/
│       └── loaders/
│
├── features/
│   ├── auth/
│   │   ├── application/
│   │   ├── infrastructure/
│   │   │   ├── models/
│   │   │   └── repositories/
│   │   └── presentation/
│   │       ├── pages/
│   │       └── widgets/
│   │
│   ├── movies/
│   │   ├── application/
│   │   ├── infrastructure/
│   │   │   ├── models/
│   │   │   └── repositories/
│   │   └── presentation/
│   │       ├── pages/
│   │       └── widgets/
│
└── app/
    ├── app_test.dart
    └── router_test.dart
```

---

## 🚀 Features

    •	📱 Responsive Design: Works on both Web and Mobile
    •	🎨 Dynamic Theming: Light and Dark Mode toggle
    •	🧩 DDD-Inspired Architecture: Clean, scalable, and modular
    •	🔒 Authentication Module (optional): Easily extendable login system
    •	🧪 Testing Ready: Mirrored test/ structure for unit, widget, and integration tests
    •	⚡ Reusable Widgets: Shared UI components for consistency
    •	🌐 Web Optimized: SEO-friendly and PWA-ready with Flutter Web
    •	🔥 Firebase Integration (optional): Hosting, analytics, and backend services

---

## 🛠️ Tech Stack

    •	💙 Flutter — Cross-platform UI toolkit
    •	🐦 Dart — Programming language for Flutter
    •	🧭 GoRouter — Declarative routing
    •	🌿 Riverpod (or Provider) — State management
    •	🔥 Firebase — Hosting, analytics, authentication (optional)
    •	🧪 flutter_test — Testing framework
    •	🎨 Custom Theming — Adaptive Light/Dark mode

---

## ▶️ Getting Started

```bash
# Clone the repo
git clone https://github.com/<your-username>/portfolio.git

cd portfolio

# Get dependencies
flutter pub get

# Run for Web
flutter run -d chrome

# Run for Mobile
flutter run
```
