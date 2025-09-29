import 'package:equatable/equatable.dart';

class EventEntity extends Equatable {
  final String eventId;
  final String title;
  final String description;
  final DateTime date;
  final String location;
  final String imageUrl;
  final String createdBy;
  final List<String> rsvps;
  final String sportType; // New field for sport type (e.g., "Basketball", "Yoga", "Running")
  final String difficultyLevel; // New field for difficulty (e.g., "Beginner", "Intermediate", "Advanced")
  final int maxParticipants; // New field for maximum participants
  final String equipment; // New field for required equipment
  final String duration; // New field for event duration (e.g., "1 hour", "2 hours")

  const EventEntity({
    required this.eventId,
    required this.title,
    required this.description,
    required this.date,
    required this.location,
    required this.imageUrl,
    required this.createdBy,
    required this.rsvps,
    required this.sportType,
    required this.difficultyLevel,
    required this.maxParticipants,
    required this.equipment,
    required this.duration,
  });

  @override
  List<Object> get props => [eventId, title, description, date, location, imageUrl, createdBy, rsvps, sportType, difficultyLevel, maxParticipants, equipment, duration];

  void operator [](String other) {}
}
