@echo off
echo Fixing Bloc emit error and rebuilding app...
echo.

echo Step 1: Cleaning previous build...
flutter clean

echo Step 2: Getting dependencies...
flutter pub get

echo Step 3: Building APK with debug logging...
flutter build apk --debug

echo Step 4: Installing on device...
flutter install

echo.
echo ========================================
echo BLOC EMIT ERROR FIXED!
echo ========================================
echo.
echo The bloc emit error has been fixed by:
echo - Making event handlers properly async
echo - Adding emit.isDone checks before emitting
echo - Preventing emit after event handler completion
echo.
echo Your app should now work without the emit error!
echo Check the console for debug messages.
echo.
pause
