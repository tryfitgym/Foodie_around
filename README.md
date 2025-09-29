# Foodie Meetups - Flutter App

A cross-platform Flutter mobile app for food enthusiasts to discover, join, and create food-related events in their community.

## 🚀 Features

- **Email & password Authentication** - Secure login with Firebase Auth
- **Event Discovery** - Browse food events with beautiful cards
- **Event Details** - View comprehensive event information
- **RSVP System** - Join events and track attendance
- **Real-time Comments** - Chat with other attendees
- **User Profiles** - Manage your profile and view your events
- **Modern UI** - Material Design 3 with custom theming

## 🏗️ Architecture

This app follows **Clean Architecture** principles with **Feature-First** organization:

```
lib/
├── core/                          # Shared/common code
│   ├── di/                        # Dependency injection
│   ├── error/                     # Error handling
│   ├── firebase/                  # Firebase configuration
│   ├── network/                   # Network utilities
│   └── utils/                     # Extensions and utilities
├── features/                      # Feature modules
│   ├── auth/                      # Authentication
│   ├── events/                    # Event management
│   ├── comments/                  # Comments system
│   └── profile/                   # User profiles
└── main.dart                      # App entry point
```

Each feature follows Clean Architecture layers:
- **Domain**: Entities, repositories (interfaces), use cases
- **Data**: Repository implementations, data sources, models
- **Presentation**: UI components, blocs, pages

## 🛠️ Tech Stack

- **Flutter** (latest stable)
- **Firebase** (Auth, Firestore, Realtime Database)
- **Google Sign-In**
- **flutter_bloc** (State Management)
- **GetIt** (Dependency Injection)
- **Freezed** (Code Generation)
- **Dartz** (Functional Programming)

## 📱 Screens

1. **Login Screen** - Google Sign-In
2. **Events Screen** - Browse all events
3. **Event Details** - Event info, RSVP, comments
4. **Profile Screen** - User profile and events

## 🔧 Setup Instructions

### Prerequisites

- Flutter SDK (latest stable)
- Android Studio / VS Code
- Firebase project
- Google Sign-In configuration

### 1. Clone and Install Dependencies

```bash
git clone <repository-url>
cd bite_up_community
flutter pub get
```

### 2. Firebase Setup

1. Create a new Firebase project at [Firebase Console](https://console.firebase.google.com)
2. Enable Authentication with Google Sign-In
3. Enable Firestore Database
4. Enable Realtime Database
5. Download configuration files:
   - `google-services.json` → `android/app/`
   - `GoogleService-Info.plist` → `ios/Runner/`

### 3. Google Sign-In Configuration

#### Android
Add to `android/app/build.gradle`:
```gradle
dependencies {
    implementation 'com.google.android.gms:play-services-auth:20.7.0'
}
```

#### iOS
Add to `ios/Runner/Info.plist`:
```xml
<key>CFBundleURLTypes</key>
<array>
    <dict>
        <key>CFBundleURLName</key>
        <string>REVERSED_CLIENT_ID</string>
        <key>CFBundleURLSchemes</key>
        <array>
            <string>YOUR_REVERSED_CLIENT_ID</string>
        </array>
    </dict>
</array>
```

### 4. Run the App

```bash
flutter run
```

## 🗄️ Database Structure

### Firestore Collections

#### Users
```json
{
  "uid": "user123",
  "name": "John Doe",
  "email": "john@example.com",
  "profilePic": "https://example.com/profile.jpg",
  "bio": "Food lover, always exploring new cafes!"
}
```

#### Events
```json
{
  "eventId": "event123",
  "title": "Street Food Festival",
  "description": "Explore delicious street food from around the world.",
  "date": "2025-10-10T18:00:00",
  "location": "City Park",
  "imageUrl": "https://example.com/streetfood.jpg",
  "createdBy": "user123",
  "rsvps": ["user123", "user456"]
}
```

### Realtime Database

#### Comments
```
comments/
  {eventId}/
    {commentId}/
      userId: "user123"
      username: "John Doe"
      profilePic: "https://example.com/profile.jpg"
      message: "Can't wait for this event!"
      timestamp: "2025-09-27T12:30:00Z"
```

## 🎨 UI/UX Features

- **Material Design 3** with custom color scheme
- **Responsive layouts** for different screen sizes
- **Image caching** for optimal performance
- **Pull-to-refresh** functionality
- **Loading states** and error handling
- **Smooth animations** and transitions

## 🧪 Testing

```bash
# Run unit tests
flutter test

# Run integration tests
flutter test integration_test/

# Generate test coverage
flutter test --coverage
```

## 📦 Build for Production

### Android
```bash
flutter build apk --release
# or
flutter build appbundle --release
```

### iOS
```bash
flutter build ios --release
```

## 🚀 Deployment

### Firebase Hosting (Web)
```bash
flutter build web
firebase deploy
```

### App Stores
- Follow platform-specific guidelines
- Configure app signing
- Submit for review

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Follow Clean Architecture principles
4. Write tests for new features
5. Submit a pull request

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🆘 Support

For support and questions:
- Create an issue in the repository
- Check the documentation
- Review the code examples

---

**Happy Coding! 🍕🍔🍰**
