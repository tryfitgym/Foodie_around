@echo off
echo Fixing navigation issue when returning from event details...
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
echo NAVIGATION ISSUE FIXED!
echo ========================================
echo.
echo The issue has been fixed by:
echo - Detecting when bloc is in eventLoaded state
echo - Automatically resetting to events list
echo - Showing loading indicator during reset
echo.
echo Now when you navigate back from event details,
echo the events list will load properly!
echo.
pause
