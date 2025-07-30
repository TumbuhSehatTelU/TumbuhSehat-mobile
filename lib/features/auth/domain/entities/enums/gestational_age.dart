import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum()
enum GestationalAge {
  oneMonth('1 Bulan (0-4 Minggu)'),
  twoMonths('2 Bulan (5-8 Minggu)'),
  threeMonths('3 Bulan (9-13 Minggu)'),
  fourMonths('4 Bulan (14-17 Minggu)'),
  fiveMonths('5 Bulan (18-22 Minggu)'),
  sixMonths('6 Bulan (23-27 Minggu)'),
  sevenMonths('7 Bulan (28-31 Minggu)'),
  eightMonths('8 Bulan (32-35 Minggu)'),
  nineMonths('9 Bulan (36-40 Minggu)');

  const GestationalAge(this.displayName);
  final String displayName;
}
