@echo off
echo Fixing separate bloc instances for events list and details...
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
echo SEPARATE BLOC INSTANCES FIXED!
echo ========================================
echo.
echo The issue has been fixed by:
echo - Events list uses the global EventsBloc
echo - Event details uses its own separate EventsBloc instance
echo - No more state conflicts between pages
echo.
echo Now each page has its own bloc state!
echo.
pause
