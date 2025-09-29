#!/bin/bash

echo "Building iOS IPA..."

# Clean previous builds
flutter clean

# Get dependencies
flutter pub get

# Build iOS app
flutter build ios --release

# Build IPA using xcodebuild
cd ios
xcodebuild -workspace Runner.xcworkspace -scheme Runner -configuration Release -destination generic/platform=iOS -archivePath build/Runner.xcarchive archive
xcodebuild -exportArchive -archivePath build/Runner.xcarchive -exportPath build/ -exportOptionsPlist ExportOptions.plist

echo ""
echo "iOS IPA built successfully!"
echo "IPA location: ios/build/Runner.ipa"
echo ""
