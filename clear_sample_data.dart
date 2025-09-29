import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  print('🗑️ Clearing sample data from Firestore...');
  
  try {
    // Initialize Firebase
    await Firebase.initializeApp();
    print('Firebase initialized successfully');
    
    final firestore = FirebaseFirestore.instance;
    
    // Clear events
    final eventsSnapshot = await firestore.collection('events').get();
    print('Found ${eventsSnapshot.docs.length} events to delete');
    for (final doc in eventsSnapshot.docs) {
      await doc.reference.delete();
      print('✓ Deleted event: ${doc.id}');
    }
    
    // Clear users
    final usersSnapshot = await firestore.collection('users').get();
    print('Found ${usersSnapshot.docs.length} users to delete');
    for (final doc in usersSnapshot.docs) {
      await doc.reference.delete();
      print('✓ Deleted user: ${doc.id}');
    }
    
    print('\n🎉 Successfully cleared all sample data!');
    
  } catch (e) {
    print('❌ Error clearing sample data: $e');
  }
}
