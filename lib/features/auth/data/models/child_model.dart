import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/entities/child.dart';

part 'child_model.freezed.dart';
part 'child_model.g.dart';

@freezed
abstract class ChildModel with _$ChildModel {
  const ChildModel._();

  const factory ChildModel({
    required String id,
    required String name,
    required String gender,
    required DateTime dateOfBirth,
    required double height,
    required double weight,
  }) = _ChildModel;

  factory ChildModel.fromJson(Map<String, dynamic> json) =>
      _$ChildModelFromJson(json);

  factory ChildModel.fromEntity(Child entity) {
    return ChildModel(
      id: entity.id,
      name: entity.name,
      gender: entity.gender,
      dateOfBirth: entity.dateOfBirth,
      height: entity.height,
      weight: entity.weight,
    );
  }

  Child toEntity() {
    return Child(
      id: id,
      name: name,
      gender: gender,
      dateOfBirth: dateOfBirth,
      height: height,
      weight: weight,
    );
  }
}
