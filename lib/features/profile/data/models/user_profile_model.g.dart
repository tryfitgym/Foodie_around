// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserProfileModel _$UserProfileModelFromJson(Map<String, dynamic> json) =>
    UserProfileModel(
      uid: json['uid'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      profilePic: json['profilePic'] as String?,
      bio: json['bio'] as String?,
      fitnessLevel: json['fitnessLevel'] as String?,
      favoriteSports: (json['favoriteSports'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      workoutGoals: json['workoutGoals'] as String?,
      age: (json['age'] as num?)?.toInt(),
      gender: json['gender'] as String?,
    );

Map<String, dynamic> _$UserProfileModelToJson(UserProfileModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'email': instance.email,
      'profilePic': instance.profilePic,
      'bio': instance.bio,
      'fitnessLevel': instance.fitnessLevel,
      'favoriteSports': instance.favoriteSports,
      'workoutGoals': instance.workoutGoals,
      'age': instance.age,
      'gender': instance.gender,
    };
