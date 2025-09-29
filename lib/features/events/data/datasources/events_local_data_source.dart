import '../../domain/entities/event.dart';
import '../../../../core/services/local_data_service.dart';

abstract class EventsLocalDataSource {
  Future<List<EventEntity>> getEvents();
  Future<EventEntity> getEventById(String eventId);
  Future<void> rsvpToEvent(String eventId, String userId);
  Future<void> cancelRsvp(String eventId, String userId);
  Future<bool> isUserRsvped(String eventId, String userId);
}

class EventsLocalDataSourceImpl implements EventsLocalDataSource {
  @override
  Future<List<EventEntity>> getEvents() async {
    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 500));
    return LocalDataService.getSampleEvents();
  }

  @override
  Future<EventEntity> getEventById(String eventId) async {
    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 300));
    final events = LocalDataService.getSampleEvents();
    return events.firstWhere((event) => event.eventId == eventId);
  }

  @override
  Future<void> rsvpToEvent(String eventId, String userId) async {
    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 300));
    // For local data, we'll just simulate success
    print('✅ Simulated RSVP to event $eventId for user $userId');
  }

  @override
  Future<void> cancelRsvp(String eventId, String userId) async {
    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 300));
    // For local data, we'll just simulate success
    print('✅ Simulated cancel RSVP for event $eventId for user $userId');
  }

  @override
  Future<bool> isUserRsvped(String eventId, String userId) async {
    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 200));
    // For demo purposes, return false (not RSVPed)
    return false;
  }
}
