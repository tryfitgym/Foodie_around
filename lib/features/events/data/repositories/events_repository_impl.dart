import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/network/network_info.dart';
import '../../../../core/utils/typedefs.dart';
import '../../domain/entities/event.dart';
import '../../domain/repositories/events_repository.dart';
import '../datasources/events_local_data_source.dart';
import '../models/event_model.dart';

class EventsRepositoryImpl implements EventsRepository {
  final EventsLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  EventsRepositoryImpl({
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  ResultFuture<List<EventEntity>> getEvents() async {
    try {
      final events = await localDataSource.getEvents();
      return Right(events);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  ResultFuture<EventEntity> getEventById(String eventId) async {
    try {
      final event = await localDataSource.getEventById(eventId);
      return Right(event);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  ResultVoid rsvpToEvent(String eventId, String userId) async {
    try {
      await localDataSource.rsvpToEvent(eventId, userId);
      return const Right(null);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  ResultVoid cancelRsvp(String eventId, String userId) async {
    try {
      await localDataSource.cancelRsvp(eventId, userId);
      return const Right(null);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  ResultFuture<bool> isUserRsvped(String eventId, String userId) async {
    try {
      final isRsvped = await localDataSource.isUserRsvped(eventId, userId);
      return Right(isRsvped);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}