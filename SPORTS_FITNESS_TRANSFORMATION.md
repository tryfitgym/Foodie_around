# FitPulse - Sports & Fitness App Transformation

## 🏃‍♂️ Overview

This document describes the transformation of the original "Foodie Meetups" app into "FitPulse" - a sports and fitness event discovery app. All functionality remains the same, but the theme, data fields, and content have been updated to focus on sports and fitness activities.

## 🎨 Theme Changes

### Visual Updates
- **App Name**: Changed from "Foodie Meetups" to "FitPulse"
- **Color Scheme**: Updated from pink (#E91E63) to fitness green (#2E7D32)
- **Icons**: Changed from restaurant/food icons to fitness center icons
- **Branding**: Updated all text to reflect sports and fitness theme

### UI Components Updated
- Splash screen with fitness center icon
- Login page with sports and fitness messaging
- App bar with FitPulse branding
- Event cards with sports-specific information
- Navigation with fitness theme colors

## 🗄️ Database Schema Changes

### New Event Fields
The event model now includes sports and fitness specific fields:

```dart
class EventEntity {
  // Original fields
  final String eventId;
  final String title;
  final String description;
  final DateTime date;
  final String location;
  final String imageUrl;
  final String createdBy;
  final List<String> rsvps;
  
  // New sports and fitness fields
  final String sportType;           // e.g., "Basketball", "Yoga", "Running"
  final String difficultyLevel;     // e.g., "Beginner", "Intermediate", "Advanced"
  final int maxParticipants;       // Maximum number of participants
  final String equipment;           // Required equipment
  final String duration;           // Event duration (e.g., "1 hour", "2 hours")
}
```

### New User Profile Fields
User profiles now include fitness-specific information:

```dart
class UserProfileEntity {
  // Original fields
  final String uid;
  final String name;
  final String email;
  final String? profilePic;
  final String? bio;
  
  // New fitness fields
  final String? fitnessLevel;       // e.g., "Beginner", "Intermediate", "Advanced"
  final List<String>? favoriteSports; // Array of favorite sports
  final String? workoutGoals;      // Personal workout goals
  final int? age;                  // User's age
  final String? gender;            // User's gender
}
```

## 📊 Sample Data

### Sports & Fitness Events
The app now includes 15 sample sports and fitness events:

1. **Morning Yoga Session** - Beginner yoga in Central Park
2. **Basketball Tournament** - Competitive tournament at Madison Square Garden
3. **5K Fun Run** - Community running event in Prospect Park
4. **CrossFit Bootcamp** - High-intensity workout session
5. **Tennis Tournament** - Singles and doubles matches
6. **Swimming Lessons** - Learn to swim with certified instructors
7. **Rock Climbing Session** - Indoor climbing for all levels
8. **Cycling Group Ride** - Scenic bike tour through the city
9. **Boxing Training** - Learn boxing fundamentals
10. **Soccer Match** - Friendly soccer game
11. **Pilates Class** - Core strengthening session
12. **Weightlifting Workshop** - Learn proper techniques
13. **Martial Arts Training** - Self-defense and discipline
14. **HIIT Workout** - High-intensity interval training
15. **Volleyball Tournament** - Beach volleyball competition

### Sample Users
The app includes 5 sample users with fitness profiles:

1. **Alex Johnson** - Fitness enthusiast and personal trainer
2. **Sarah Chen** - Yoga instructor and wellness coach
3. **Mike Rodriguez** - Basketball player and coach
4. **Emma Wilson** - Marathon runner and cycling enthusiast
5. **David Kim** - Rock climbing instructor and outdoor enthusiast

## 🚀 Data Loading

### Automatic Data Loading
The app automatically loads sample data when it starts:

```dart
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await initDependencies();
  
  // Load sample sports and fitness data
  await DataLoadingService.loadSampleData();
  
  runApp(const MyApp());
}
```

### Manual Data Management
You can also manage sample data manually:

```bash
# Load sample data
dart run scripts/run_populate.dart

# Clear sample data
dart run clear_sample_data.dart
```

## 🎯 New Features

### Enhanced Event Cards
Event cards now display:
- **Sport Type** - Badge showing the type of sport/activity
- **Difficulty Level** - Color-coded difficulty indicator
- **Duration** - How long the event lasts
- **Max Participants** - Current RSVPs vs. maximum capacity
- **Equipment** - What participants need to bring

### Fitness-Focused UI
- Sport type badges with color coding
- Difficulty level indicators
- Equipment requirements
- Duration and capacity information
- Fitness-themed icons and colors

## 🛠️ Technical Implementation

### Data Loading Service
Created `DataLoadingService` class that:
- Checks if data already exists to avoid duplicates
- Loads sample sports and fitness events
- Loads sample user profiles with fitness information
- Provides methods to clear sample data

### Model Updates
All data models have been updated to include:
- New sports and fitness fields
- Proper JSON serialization
- Entity conversion methods
- Updated props for equality comparison

### UI Updates
- Updated all text and messaging
- Changed color scheme throughout the app
- Added new fields to event cards
- Updated icons and branding

## 🧪 Testing the Changes

1. **Run the app**: The sample data will load automatically
2. **View events**: Browse the sports and fitness events
3. **Check profiles**: View user profiles with fitness information
4. **Test functionality**: All original features work with new data

## 🗑️ Clearing Sample Data

When you're ready to remove the sample data:

```bash
dart run clear_sample_data.dart
```

Or use the service in your app:
```dart
await DataLoadingService.clearSampleData();
```

## 📱 App Features

All original functionality is preserved:
- ✅ Google Sign-In authentication
- ✅ Event discovery and browsing
- ✅ Event details with RSVP functionality
- ✅ Real-time comments
- ✅ User profiles
- ✅ Clean Architecture with Feature-First organization
- ✅ State management with flutter_bloc
- ✅ Firebase integration

## 🎨 Visual Changes Summary

| Component | Before | After |
|-----------|--------|-------|
| App Name | Foodie Meetups | FitPulse |
| Primary Color | Pink (#E91E63) | Fitness Green (#2E7D32) |
| Main Icon | Restaurant | Fitness Center |
| Event Focus | Food & Cooking | Sports & Fitness |
| User Profiles | Basic info | Fitness-focused info |
| Event Cards | Basic details | Sport type, difficulty, equipment |

## 🚀 Next Steps

1. **Run the app** to see the new sports and fitness theme
2. **Test all features** to ensure everything works correctly
3. **Customize further** by adding more sports and fitness events
4. **Clear sample data** when ready to use with real data

The app now provides a complete sports and fitness event discovery experience while maintaining all the original functionality and clean architecture principles!
