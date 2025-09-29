@echo off
echo Debugging events data issue...
echo.

echo Step 1: Testing Firestore connection...
dart run test_firestore.dart

echo.
echo Step 2: Re-populating events with correct format...
dart run scripts/run_populate.dart

echo.
echo Step 3: Testing Firestore again...
dart run test_firestore.dart

echo.
echo Step 4: Building and installing app with debug logs...
flutter clean
flutter pub get
flutter build apk --debug
flutter install

echo.
echo ========================================
echo DEBUG COMPLETE!
echo ========================================
echo.
echo Check the console output above for any errors.
echo The app is now installed with debug logging enabled.
echo.
echo Look for these debug messages in your IDE console:
echo - 🔍 EventsBloc: Starting to fetch events...
echo - 🔍 EventsRemoteDataSource: Fetching events from Firestore...
echo - ✅ EventsBloc: Successfully fetched X events
echo.
pause
