import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/user.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel extends UserEntity {
  const UserModel({
    required super.uid,
    required super.name,
    required super.email,
    super.profilePic,
    super.bio,
    super.fitnessLevel,
    super.favoriteSports,
    super.workoutGoals,
    super.age,
    super.gender,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
  
  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  factory UserModel.fromEntity(UserEntity entity) {
    return UserModel(
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

  UserEntity toEntity() {
    return UserEntity(
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
