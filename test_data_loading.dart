import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  print('🧪 Testing data loading...');
  
  try {
    // Initialize Firebase
    await Firebase.initializeApp();
    print('✅ Firebase initialized successfully');
    
    final firestore = FirebaseFirestore.instance;
    
    // Test loading a single event
    final testEvent = {
      'eventId': 'test_event_001',
      'title': 'Test Yoga Session',
      'description': 'This is a test yoga session to verify data loading works.',
      'date': DateTime.now().add(const Duration(days: 1)).toIso8601String(),
      'location': 'Test Location',
      'imageUrl': 'https://images.unsplash.com/photo-1544367567-0f2fcb009e0b?w=800&h=600&fit=crop',
      'createdBy': 'admin',
      'rsvps': ['user1'],
      'sportType': 'Yoga',
      'difficultyLevel': 'Beginner',
      'maxParticipants': 10,
      'equipment': 'Yoga mat',
      'duration': '1 hour',
    };
    
    print('📝 Adding test event to Firestore...');
    await firestore.collection('events').doc('test_event_001').set(testEvent);
    print('✅ Test event added successfully');
    
    // Try to read it back
    print('📖 Reading test event back from Firestore...');
    final doc = await firestore.collection('events').doc('test_event_001').get();
    
    if (doc.exists) {
      print('✅ Test event found in Firestore!');
      print('   Title: ${doc.data()?['title']}');
      print('   Sport Type: ${doc.data()?['sportType']}');
      print('   Difficulty: ${doc.data()?['difficultyLevel']}');
    } else {
      print('❌ Test event not found in Firestore!');
    }
    
    // Clean up test event
    print('🧹 Cleaning up test event...');
    await firestore.collection('events').doc('test_event_001').delete();
    print('✅ Test event cleaned up');
    
    print('\n🎉 Test completed successfully!');
    
  } catch (e) {
    print('❌ Error during test: $e');
  }
}
