@echo off
echo Building Android APK...

REM Clean previous builds
flutter clean

REM Get dependencies
flutter pub get

REM Build APK for release
flutter build apk --release

echo.
echo Android APK built successfully!
echo APK location: build\app\outputs\flutter-apk\app-release.apk
echo.
pause
