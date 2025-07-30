import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum()
enum ParentRole {
  ayah('Ayah'),
  ibu('Ibu'),
  wali('Wali'),
  pengasuh('Pengasuh'),
  lainnya('Lainnya');

  const ParentRole(this.displayName);
  final String displayName;
}
