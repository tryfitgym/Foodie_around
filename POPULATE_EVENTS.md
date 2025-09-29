# Populate Events Data

This guide explains how to populate your Firestore database with sample events data.

## Prerequisites

1. Make sure your Firebase project is set up and configured
2. Ensure your `google-services.json` (Android) and `GoogleService-Info.plist` (iOS) files are properly configured
3. Make sure you have the necessary Firebase permissions to write to Firestore

## Running the Population Script

### Option 1: Using the Batch File (Windows)
1. Double-click `populate_events.bat`
2. The script will run and populate your Firestore with 15 sample events

### Option 2: Using Dart Command
1. Open terminal/command prompt in your project root
2. Run: `dart run scripts/run_populate.dart`

## What the Script Does

The script will create 15 sample events in your Firestore `events` collection with:
- Unique event IDs
- Realistic event titles and descriptions
- Future dates (5-75 days from now)
- Various locations in New York
- Public image URLs from Unsplash
- Sample RSVP lists

## Sample Events Include

1. Street Food Festival
2. Italian Cooking Workshop
3. Food Truck Rally
4. Sushi Making Class
5. BBQ & Beer Tasting
6. Farmers Market Tour
7. Dessert Workshop
8. Wine & Cheese Pairing
9. Coffee Roasting Experience
10. Seafood Cooking Masterclass
11. Vegan Cooking Workshop
12. Bread Baking Workshop
13. Spice Market Tour
14. Cocktail Mixing Class
15. Food Photography Workshop

## After Running the Script

1. Your Flutter app will now display real data from Firestore instead of sample data
2. The events will be loaded through the Clean Architecture implementation
3. You can test the app's functionality with real data

## Troubleshooting

If you encounter errors:
1. Check your Firebase configuration
2. Ensure you have write permissions to Firestore
3. Verify your internet connection
4. Check that Firebase is properly initialized in your project

## Notes

- Images are stored as public URLs (no Firebase Storage needed)
- All events are created with future dates
- The script can be run multiple times (it will overwrite existing events with the same IDs)
- Events are created with sample user IDs for RSVPs
