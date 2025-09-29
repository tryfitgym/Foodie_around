import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class DataLoadingService {
  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  
  static Future<void> loadSampleData() async {
    try {
      print('🔄 Loading sample sports and fitness data...');
      
      // Wait a bit to ensure Firebase is fully initialized
      await Future.delayed(const Duration(seconds: 2));
      
      // Check if data already exists
      final eventsSnapshot = await _firestore.collection('events').limit(1).get();
      if (eventsSnapshot.docs.isNotEmpty) {
        print('✅ Sample data already exists, skipping...');
        return;
      }
      
      print('📝 No existing data found, loading sample data...');

      // Sample sports and fitness events data
      final events = [
        {
          'eventId': 'event_001',
          'title': 'Morning Yoga Session',
          'description': 'Start your day with a peaceful yoga session in the park. Perfect for all fitness levels, from beginners to advanced practitioners. Bring your own mat and water bottle.',
          'date': DateTime.now().add(const Duration(days: 2)).toIso8601String(),
          'location': 'Central Park, New York',
          'imageUrl': 'https://images.unsplash.com/photo-1544367567-0f2fcb009e0b?w=800&h=600&fit=crop',
          'createdBy': 'admin',
          'rsvps': ['user1', 'user2', 'user3'],
          'sportType': 'Yoga',
          'difficultyLevel': 'Beginner',
          'maxParticipants': 20,
          'equipment': 'Yoga mat, water bottle',
          'duration': '1 hour',
        },
        {
          'eventId': 'event_002',
          'title': 'Basketball Tournament',
          'description': 'Join our competitive basketball tournament! Teams of 5 players each. Prizes for winners. All skill levels welcome. Bring your A-game!',
          'date': DateTime.now().add(const Duration(days: 7)).toIso8601String(),
          'location': 'Madison Square Garden, New York',
          'imageUrl': 'https://images.unsplash.com/photo-1546519638-68e10945ff9e?w=800&h=600&fit=crop',
          'createdBy': 'admin',
          'rsvps': ['user1', 'user4', 'user5'],
          'sportType': 'Basketball',
          'difficultyLevel': 'Intermediate',
          'maxParticipants': 40,
          'equipment': 'Basketball shoes, water bottle',
          'duration': '3 hours',
        },
        {
          'eventId': 'event_003',
          'title': '5K Fun Run',
          'description': 'Join us for a fun 5K run through the city! Perfect for runners of all levels. Water stations provided. Medals for all participants.',
          'date': DateTime.now().add(const Duration(days: 15)).toIso8601String(),
          'location': 'Prospect Park, Brooklyn',
          'imageUrl': 'https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=800&h=600&fit=crop',
          'createdBy': 'admin',
          'rsvps': ['user1', 'user2', 'user3', 'user4', 'user5'],
          'sportType': 'Running',
          'difficultyLevel': 'Beginner',
          'maxParticipants': 100,
          'equipment': 'Running shoes, water bottle',
          'duration': '1.5 hours',
        },
        {
          'eventId': 'event_004',
          'title': 'CrossFit Bootcamp',
          'description': 'High-intensity CrossFit workout for all fitness levels. Build strength, endurance, and community. No experience necessary!',
          'date': DateTime.now().add(const Duration(days: 20)).toIso8601String(),
          'location': 'CrossFit Manhattan',
          'imageUrl': 'https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=800&h=600&fit=crop',
          'createdBy': 'admin',
          'rsvps': ['user2', 'user6'],
          'sportType': 'CrossFit',
          'difficultyLevel': 'Intermediate',
          'maxParticipants': 15,
          'equipment': 'Workout clothes, water bottle',
          'duration': '1 hour',
        },
        {
          'eventId': 'event_005',
          'title': 'Tennis Tournament',
          'description': 'Competitive tennis tournament for all skill levels. Singles and doubles matches. Prizes for winners!',
          'date': DateTime.now().add(const Duration(days: 25)).toIso8601String(),
          'location': 'Central Park Tennis Center',
          'imageUrl': 'https://images.unsplash.com/photo-1551698618-1dfe5d97d256?w=800&h=600&fit=crop',
          'createdBy': 'admin',
          'rsvps': ['user1', 'user3', 'user7'],
          'sportType': 'Tennis',
          'difficultyLevel': 'Intermediate',
          'maxParticipants': 32,
          'equipment': 'Tennis racket, tennis shoes',
          'duration': '4 hours',
        },
      ];

      // Sample users data with fitness profiles
      final users = [
        {
          'uid': 'user1',
          'name': 'Alex Johnson',
          'email': 'alex.johnson@example.com',
          'profilePic': 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=150&h=150&fit=crop&crop=face',
          'bio': 'Fitness enthusiast and personal trainer. Love helping others achieve their goals!',
          'fitnessLevel': 'Advanced',
          'favoriteSports': ['Weightlifting', 'CrossFit', 'Running'],
          'workoutGoals': 'Build strength and help others get fit',
          'age': 28,
          'gender': 'Male',
        },
        {
          'uid': 'user2',
          'name': 'Sarah Chen',
          'email': 'sarah.chen@example.com',
          'profilePic': 'https://images.unsplash.com/photo-1494790108755-2616b612b786?w=150&h=150&fit=crop&crop=face',
          'bio': 'Yoga instructor and wellness coach. Passionate about mindfulness and movement.',
          'fitnessLevel': 'Intermediate',
          'favoriteSports': ['Yoga', 'Pilates', 'Swimming'],
          'workoutGoals': 'Maintain flexibility and inner peace',
          'age': 32,
          'gender': 'Female',
        },
        {
          'uid': 'user3',
          'name': 'Mike Rodriguez',
          'email': 'mike.rodriguez@example.com',
          'profilePic': 'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?w=150&h=150&fit=crop&crop=face',
          'bio': 'Basketball player and coach. Always looking for a good game!',
          'fitnessLevel': 'Advanced',
          'favoriteSports': ['Basketball', 'Tennis', 'Soccer'],
          'workoutGoals': 'Stay competitive and improve skills',
          'age': 25,
          'gender': 'Male',
        },
      ];

      // Add events to Firestore
      print('📅 Adding ${events.length} events to Firestore...');
      for (final event in events) {
        try {
          await _firestore.collection('events').doc(event['eventId'] as String).set(event);
          print('✓ Added event: ${event['title']}');
        } catch (e) {
          print('❌ Failed to add event ${event['title']}: $e');
        }
      }

      // Add users to Firestore
      print('👥 Adding ${users.length} users to Firestore...');
      for (final user in users) {
        try {
          await _firestore.collection('users').doc(user['uid'] as String).set(user);
          print('✓ Added user: ${user['name']}');
        } catch (e) {
          print('❌ Failed to add user ${user['name']}: $e');
        }
      }

      // Verify data was added
      print('🔍 Verifying data was added...');
      final verifyEvents = await _firestore.collection('events').get();
      final verifyUsers = await _firestore.collection('users').get();
      print('📊 Final count - Events: ${verifyEvents.docs.length}, Users: ${verifyUsers.docs.length}');

      print('🎉 Successfully loaded sample sports and fitness data!');
      
    } catch (e) {
      print('❌ Error loading sample data: $e');
    }
  }

  static Future<void> clearSampleData() async {
    try {
      print('🗑️ Clearing sample data...');
      
      // Clear events
      final eventsSnapshot = await _firestore.collection('events').get();
      for (final doc in eventsSnapshot.docs) {
        await doc.reference.delete();
      }
      
      // Clear users
      final usersSnapshot = await _firestore.collection('users').get();
      for (final doc in usersSnapshot.docs) {
        await doc.reference.delete();
      }
      
      print('✅ Sample data cleared successfully!');
      
    } catch (e) {
      print('❌ Error clearing sample data: $e');
    }
  }
}
