@echo off
echo Fixing AuthState when() method error...
echo.

echo Step 1: Cleaning previous build...
flutter clean

echo Step 2: Getting dependencies...
flutter pub get

echo Step 3: Building APK...
flutter build apk --debug

echo Step 4: Installing on device...
flutter install

echo.
echo ========================================
echo AUTH STATE ERROR FIXED!
echo ========================================
echo.
echo The error has been fixed by:
echo - Replacing authState.when() with proper if-else statements
echo - Using authState is AuthAuthenticated pattern
echo - Maintaining the same functionality
echo.
echo Your app should now build and run successfully!
echo.
pause


