import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/entities/enums/maternal_status.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/entities/enums/parent_role.dart';

part 'parent.freezed.dart';

@freezed
abstract class Parent with _$Parent {
  const factory Parent({
    required String id,
    required String name,
    required ParentRole role,
    required DateTime dateOfBirth,
    required MaternalStatus maternalStatus,
  }) = _Parent;
}
