import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/entities/enums/maternal_status.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/entities/enums/parent_role.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/entities/parent.dart';

part 'parent_model.freezed.dart';
part 'parent_model.g.dart';

@freezed
abstract class ParentModel with _$ParentModel {
  const ParentModel._();

  const factory ParentModel({
    required String id,
    required String name,
    required ParentRole role,
    required DateTime dateOfBirth,
    required MaternalStatus maternalStatus,
    required String hashedPassword,
  }) = _ParentModel;

  factory ParentModel.fromJson(Map<String, dynamic> json) =>
      _$ParentModelFromJson(json);

  Parent toEntity() {
    return Parent(
      id: id,
      name: name,
      role: role,
      dateOfBirth: dateOfBirth,
      maternalStatus: maternalStatus,
    );
  }
}
