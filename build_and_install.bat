@echo off
echo Building and installing Flutter app...
echo.

echo Cleaning previous build...
flutter clean

echo Getting dependencies...
flutter pub get

echo Building APK...
flutter build apk --release

echo Installing on connected device...
flutter install

echo.
echo App installed successfully!
echo You can now test the app with real Firestore data.
echo.
pause
