import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Extension untuk TextStyle
extension TextStyleExtension on TextStyle {
  TextStyle withColor(Color color) {
    return copyWith(color: color);
  }
}

// contoh penggunaan
// Text(
//   'ini tulisan',
//   style: Regular.h1.withColor(Main.blue),
// );

class Regular {
  static TextStyle h1 = GoogleFonts.openSans(
    fontSize: 28,
    fontWeight: FontWeight.normal,
    letterSpacing: -1.5,
  );

  static TextStyle h2 = GoogleFonts.openSans(
    fontSize: 22,
    fontWeight: FontWeight.normal,
    letterSpacing: -1,
  );

  static TextStyle h3 = GoogleFonts.openSans(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    letterSpacing: -0.5,
  );

  static TextStyle large = GoogleFonts.openSans(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    letterSpacing: 0,
  );

  static TextStyle body = GoogleFonts.openSans(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.5,
  );

  static TextStyle small = GoogleFonts.openSans(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    letterSpacing: 1,
  );
}

class Medium {
  static TextStyle h1 = GoogleFonts.openSans(
    fontSize: 28,
    fontWeight: FontWeight.w500,
    letterSpacing: -1.5,
  );

  static TextStyle h2 = GoogleFonts.openSans(
    fontSize: 22,
    fontWeight: FontWeight.w500,
    letterSpacing: -1,
  );

  static TextStyle h3 = GoogleFonts.openSans(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    letterSpacing: -0.5,
  );

  static TextStyle large = GoogleFonts.openSans(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
  );

  static TextStyle body = GoogleFonts.openSans(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
  );

  static TextStyle small = GoogleFonts.openSans(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    letterSpacing: 1,
  );
}

class SemiBold {
  static TextStyle h1 = GoogleFonts.openSans(
    fontSize: 28,
    fontWeight: FontWeight.w600,
    letterSpacing: -1.5,
  );

  static TextStyle h2 = GoogleFonts.openSans(
    fontSize: 22,
    fontWeight: FontWeight.w600,
    letterSpacing: -1,
  );

  static TextStyle h3 = GoogleFonts.openSans(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.5,
  );

  static TextStyle large = GoogleFonts.openSans(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
  );

  static TextStyle body = GoogleFonts.openSans(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.5,
  );

  static TextStyle small = GoogleFonts.openSans(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    letterSpacing: 1,
  );
}

class Bold {
  static TextStyle h1 = GoogleFonts.openSans(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    letterSpacing: -1.5,
  );

  static TextStyle h2 = GoogleFonts.openSans(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    letterSpacing: -1,
  );

  static TextStyle h3 = GoogleFonts.openSans(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    letterSpacing: -0.5,
  );

  static TextStyle large = GoogleFonts.openSans(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    letterSpacing: 0,
  );

  static TextStyle body = GoogleFonts.openSans(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.5,
  );

  static TextStyle small = GoogleFonts.openSans(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    letterSpacing: 1,
  );
}
