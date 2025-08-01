// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parent_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ParentModel _$ParentModelFromJson(Map<String, dynamic> json) => _ParentModel(
  id: json['id'] as String,
  name: json['name'] as String,
  role: $enumDecode(_$ParentRoleEnumMap, json['role']),
  dateOfBirth: DateTime.parse(json['dateOfBirth'] as String),
  maternalStatus: MaternalStatus.fromJson(
    json['maternalStatus'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$ParentModelToJson(_ParentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'role': _$ParentRoleEnumMap[instance.role]!,
      'dateOfBirth': instance.dateOfBirth.toIso8601String(),
      'maternalStatus': instance.maternalStatus,
    };

const _$ParentRoleEnumMap = {
  ParentRole.ayah: 'ayah',
  ParentRole.ibu: 'ibu',
  ParentRole.wali: 'wali',
  ParentRole.pengasuh: 'pengasuh',
  ParentRole.lainnya: 'lainnya',
};
