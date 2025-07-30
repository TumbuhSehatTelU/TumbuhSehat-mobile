import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/entities/enums/gestational_age.dart';
import 'package:mobile_tumbuh_sehat/features/auth/domain/entities/enums/lactation_period.dart';

part 'maternal_status.freezed.dart';
part 'maternal_status.g.dart';

@JsonSerializable()
@freezed
class MaternalStatus with _$MaternalStatus {
  const MaternalStatus._();
  const factory MaternalStatus.pregnant({required GestationalAge age}) =
      _Pregnant;

  const factory MaternalStatus.lactating({required LactationPeriod period}) =
      _Lactating;

  const factory MaternalStatus.none() = _None;

  factory MaternalStatus.fromJson(Map<String, dynamic> json) =>
      _$MaternalStatusFromJson(json);
}
