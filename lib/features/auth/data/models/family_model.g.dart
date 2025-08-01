// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'family_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FamilyModel _$FamilyModelFromJson(Map<String, dynamic> json) => _FamilyModel(
  familyId: json['familyId'] as String,
  parents: (json['parents'] as List<dynamic>)
      .map((e) => ParentModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  children: (json['children'] as List<dynamic>)
      .map((e) => ChildModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$FamilyModelToJson(_FamilyModel instance) =>
    <String, dynamic>{
      'familyId': instance.familyId,
      'parents': instance.parents,
      'children': instance.children,
    };
