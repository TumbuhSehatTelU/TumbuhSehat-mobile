import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/entities/child.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/entities/parent.dart';

part 'family.freezed.dart';

@freezed
abstract class Family with _$Family {
  const factory Family({
    required String familyId,
    required List<Parent> parents,
    required List<Child> children,
  }) = _Family;
}
