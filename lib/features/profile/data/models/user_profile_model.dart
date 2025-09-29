import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/user_profile.dart';

part 'user_profile_model.g.dart';

@JsonSerializable()
class UserProfileModel {
  final String uid;
  final String name;
  final String email;
  final String? profilePic;
  final String? bio;
  final String? fitnessLevel; // New field for fitness level (e.g., "Beginner", "Intermediate", "Advanced")
  final List<String>? favoriteSports; // New field for favorite sports
  final String? workoutGoals; // New field for workout goals
  final int? age; // New field for age
  final String? gender; // New field for gender

  const UserProfileModel({
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

  factory UserProfileModel.fromJson(Map<String, dynamic> json) => _$UserProfileModelFromJson(json);
  
  Map<String, dynamic> toJson() => _$UserProfileModelToJson(this);

  factory UserProfileModel.fromEntity(UserProfileEntity entity) {
    return UserProfileModel(
      uid: entity.uid,
      name: entity.name,
      email: entity.email,
      profilePic: entity.profilePic,
      bio: entity.bio,
      fitnessLevel: entity.fitnessLevel,
      favoriteSports: entity.favoriteSports,
      workoutGoals: entity.workoutGoals,
      age: entity.age,
      gender: entity.gender,
    );
  }

  UserProfileEntity toEntity() {
    return UserProfileEntity(
      uid: uid,
      name: name,
      email: email,
      profilePic: profilePic,
      bio: bio,
      fitnessLevel: fitnessLevel,
      favoriteSports: favoriteSports,
      workoutGoals: workoutGoals,
      age: age,
      gender: gender,
    );
  }
}
