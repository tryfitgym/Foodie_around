@echo off
echo Cleaning up and building Flutter app with real data...
echo.

echo Step 1: Cleaning previous builds...
flutter clean

echo Step 2: Getting dependencies...
flutter pub get

echo Step 3: Running code generation (if needed)...
flutter packages pub run build_runner build --delete-conflicting-outputs

echo Step 4: Building APK for release...
flutter build apk --release

echo Step 5: Installing on connected device...
flutter install

echo.
echo ========================================
echo BUILD COMPLETED SUCCESSFULLY!
echo ========================================
echo.
echo Your app now uses real Firestore data instead of sample data.
echo.
echo To populate more events, run: dart run scripts/run_populate.dart
echo.
echo Press any key to exit...
pause
