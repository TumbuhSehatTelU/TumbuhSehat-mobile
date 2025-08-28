import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum()
enum LactationPeriod {
  oneToSixMonths('1 - 6 Bulan'),
  sevenToTwelveMonths('7 - 12 Bulan');

  const LactationPeriod(this.displayName);
  final String displayName;
}



