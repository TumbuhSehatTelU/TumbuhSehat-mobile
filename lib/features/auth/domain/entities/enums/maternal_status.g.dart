// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'maternal_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Pregnant _$PregnantFromJson(Map<String, dynamic> json) => _Pregnant(
  age: $enumDecode(_$GestationalAgeEnumMap, json['age']),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$PregnantToJson(_Pregnant instance) => <String, dynamic>{
  'age': _$GestationalAgeEnumMap[instance.age]!,
  'runtimeType': instance.$type,
};

const _$GestationalAgeEnumMap = {
  GestationalAge.oneMonth: 'oneMonth',
  GestationalAge.twoMonths: 'twoMonths',
  GestationalAge.threeMonths: 'threeMonths',
  GestationalAge.fourMonths: 'fourMonths',
  GestationalAge.fiveMonths: 'fiveMonths',
  GestationalAge.sixMonths: 'sixMonths',
  GestationalAge.sevenMonths: 'sevenMonths',
  GestationalAge.eightMonths: 'eightMonths',
  GestationalAge.nineMonths: 'nineMonths',
};

_Lactating _$LactatingFromJson(Map<String, dynamic> json) => _Lactating(
  period: $enumDecode(_$LactationPeriodEnumMap, json['period']),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$LactatingToJson(_Lactating instance) =>
    <String, dynamic>{
      'period': _$LactationPeriodEnumMap[instance.period]!,
      'runtimeType': instance.$type,
    };

const _$LactationPeriodEnumMap = {
  LactationPeriod.oneToSixMonths: 'oneToSixMonths',
  LactationPeriod.sevenToTwelveMonths: 'sevenToTwelveMonths',
};

_None _$NoneFromJson(Map<String, dynamic> json) =>
    _None($type: json['runtimeType'] as String?);

Map<String, dynamic> _$NoneToJson(_None instance) => <String, dynamic>{
  'runtimeType': instance.$type,
};
