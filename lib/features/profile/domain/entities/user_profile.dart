import 'package:equatable/equatable.dart';

class UserProfileEntity extends Equatable {
  final String uid;
  final String name;
  final String email;
  final String? profilePic;
  final String? bio;
  final String? fitnessLevel;
  final List<String>? favoriteSports;
  final String? workoutGoals;
  final int? age;
  final String? gender;

  const UserProfileEntity({
    required this.uid,
    required this.name,
    required this.email,
    this.profilePic,
    this.bio,
    this.fitnessLevel,
    this.favoriteSports,
    this.workoutGoals,
    this.age,
    this.gender,
  });

  @override
  List<Object?> get props => [uid, name, email, profilePic, bio, fitnessLevel, favoriteSports, workoutGoals, age, gender];
}
