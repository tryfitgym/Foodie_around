@echo off
echo Re-populating Firestore with correct date format...
echo.

echo Step 1: Running the updated populate script...
dart run scripts/run_populate.dart

echo.
echo Step 2: Building and installing the app...
flutter clean
flutter pub get
flutter build apk --release
flutter install

echo.
echo ========================================
echo REPOPULATION COMPLETE!
echo ========================================
echo.
echo The events have been re-populated with correct date format.
echo Your app should now display the events properly!
echo.
pause
