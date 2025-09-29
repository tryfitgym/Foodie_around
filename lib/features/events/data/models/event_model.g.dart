// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventModel _$EventModelFromJson(Map<String, dynamic> json) => EventModel(
  eventId: json['eventId'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  date: json['date'] as String,
  location: json['location'] as String,
  imageUrl: json['imageUrl'] as String,
  createdBy: json['createdBy'] as String,
  rsvps: (json['rsvps'] as List<dynamic>).map((e) => e as String).toList(),
  sportType: json['sportType'] as String,
  difficultyLevel: json['difficultyLevel'] as String,
  maxParticipants: (json['maxParticipants'] as num).toInt(),
  equipment: json['equipment'] as String,
  duration: json['duration'] as String,
);

Map<String, dynamic> _$EventModelToJson(EventModel instance) =>
    <String, dynamic>{
      'eventId': instance.eventId,
      'title': instance.title,
      'description': instance.description,
      'date': instance.date,
      'location': instance.location,
      'imageUrl': instance.imageUrl,
      'createdBy': instance.createdBy,
      'rsvps': instance.rsvps,
      'sportType': instance.sportType,
      'difficultyLevel': instance.difficultyLevel,
      'maxParticipants': instance.maxParticipants,
      'equipment': instance.equipment,
      'duration': instance.duration,
    };
