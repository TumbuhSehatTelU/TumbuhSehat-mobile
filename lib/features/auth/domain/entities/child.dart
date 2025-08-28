import 'package:freezed_annotation/freezed_annotation.dart';

part 'child.freezed.dart';

@freezed
abstract class Child with _$Child {
  const factory Child({
    required String id,    
    required String name,
    required String gender,
    required DateTime dateOfBirth,
    required double height,
    required double weight,
  }) = _Child;
}
