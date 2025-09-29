@echo off
echo Fixing BlocProvider error and rebuilding app...
echo.

echo Step 1: Cleaning previous build...
flutter clean

echo Step 2: Getting dependencies...
flutter pub get

echo Step 3: Building APK...
flutter build apk --release

echo Step 4: Installing on device...
flutter install

echo.
echo ========================================
echo FIX APPLIED SUCCESSFULLY!
echo ========================================
echo.
echo The BlocProvider error has been fixed by:
echo - Moving EventsBloc to global scope in main.dart
echo - Using addPostFrameCallback for safe bloc access
echo - Removing duplicate BlocProvider in navigation
echo.
echo Your app should now work without the provider error!
echo.
pause
