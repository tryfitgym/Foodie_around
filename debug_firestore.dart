import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  print('🔍 Debugging Firestore data...');
  
  try {
    // Initialize Firebase
    await Firebase.initializeApp();
    print('✅ Firebase initialized successfully');
    
    final firestore = FirebaseFirestore.instance;
    
    // Check events collection
    print('\n📅 Checking events collection...');
    final eventsSnapshot = await firestore.collection('events').get();
    print('Found ${eventsSnapshot.docs.length} events in Firestore');
    
    if (eventsSnapshot.docs.isNotEmpty) {
      print('\n📋 Events found:');
      for (var doc in eventsSnapshot.docs) {
        final data = doc.data();
        print('  - ${data['title']} (ID: ${doc.id})');
        print('    Sport Type: ${data['sportType']}');
        print('    Difficulty: ${data['difficultyLevel']}');
        print('    Date: ${data['date']}');
        print('    Location: ${data['location']}');
        print('    RSVPs: ${data['rsvps']?.length ?? 0}');
        print('    Max Participants: ${data['maxParticipants']}');
        print('    Equipment: ${data['equipment']}');
        print('    Duration: ${data['duration']}');
        print('    ---');
      }
    } else {
      print('❌ No events found in Firestore!');
    }
    
    // Check users collection
    print('\n👥 Checking users collection...');
    final usersSnapshot = await firestore.collection('users').get();
    print('Found ${usersSnapshot.docs.length} users in Firestore');
    
    if (usersSnapshot.docs.isNotEmpty) {
      print('\n👤 Users found:');
      for (var doc in usersSnapshot.docs) {
        final data = doc.data();
        print('  - ${data['name']} (ID: ${doc.id})');
        print('    Email: ${data['email']}');
        print('    Fitness Level: ${data['fitnessLevel']}');
        print('    Favorite Sports: ${data['favoriteSports']}');
        print('    Workout Goals: ${data['workoutGoals']}');
        print('    ---');
      }
    } else {
      print('❌ No users found in Firestore!');
    }
    
    print('\n🎉 Debug complete!');
    
  } catch (e) {
    print('❌ Error debugging Firestore: $e');
  }
}
