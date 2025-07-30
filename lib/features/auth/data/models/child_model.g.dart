// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'child_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChildModel _$ChildModelFromJson(Map<String, dynamic> json) => _ChildModel(
  id: json['id'] as String,
  name: json['name'] as String,
  gender: json['gender'] as String,
  dateOfBirth: DateTime.parse(json['dateOfBirth'] as String),
  height: (json['height'] as num).toDouble(),
  weight: (json['weight'] as num).toDouble(),
);

Map<String, dynamic> _$ChildModelToJson(_ChildModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'gender': instance.gender,
      'dateOfBirth': instance.dateOfBirth.toIso8601String(),
      'height': instance.height,
      'weight': instance.weight,
    };
