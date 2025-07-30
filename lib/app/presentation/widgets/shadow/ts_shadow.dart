import 'package:flutter/material.dart';

class TSShadow {
  static List<BoxShadow> light = [
    BoxShadow(
      color: Colors.black.withOpacity(0.2), // transparansi 20%
      offset: const Offset(0, 4), // x = 0, y = 4
      blurRadius: 16, // blur
      spreadRadius: -4, // spread
    ),
  ];

  /// Shadow 2: More Light Shadow
  static List<BoxShadow> moreLight = [
    BoxShadow(
      color: Colors.black.withOpacity(0.12), // transparansi 12%
      offset: const Offset(0, 4),
      blurRadius: 12,
      spreadRadius: 8,
    ),
  ];
}
