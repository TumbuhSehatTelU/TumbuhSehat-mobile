import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_tumbuh_sehat/features/auth/data/models/child_model.dart';
import 'package:mobile_tumbuh_sehat/features/auth/data/models/parent_model.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/entities/family.dart';

part 'family_model.freezed.dart';
part 'family_model.g.dart';

// @JsonSerializable(explicitToJson: true) 
@freezed
abstract class FamilyModel with _$FamilyModel {
  const FamilyModel._();

  const factory FamilyModel({
    required String familyId,
    required List<ParentModel> parents,
    required List<ChildModel> children,
  }) = _FamilyModel;

  factory FamilyModel.fromJson(Map<String, dynamic> json) =>
      _$FamilyModelFromJson(json);

  Family toEntity() {
    return Family(
      familyId: familyId,
      parents: parents.map((p) => p.toEntity()).toList(),
      children: children.map((c) => c.toEntity()).toList(),
    );
  }
}
