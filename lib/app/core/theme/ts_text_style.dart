import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Extension untuk TextStyle
extension TextStyleExtension on TextStyle {
  TextStyle withColor(Color color) {
    return copyWith(color: color);
  }
}

const double _tabletFontScale = 1.5;

// contoh penggunaan
// Text(
//   'ini tulisan',
//   style: Regular.h1.withColor(Main.blue),
// );

class TSFont {
  static Regular regular = Regular();
  static Medium medium = Medium();
  static SemiBold semiBold = SemiBold();
  static Bold bold = Bold();
  static ExtraBold extraBold = ExtraBold();
}

class Regular {
  Regular();
  final TextStyle h0 = GoogleFonts.openSans(
    fontSize: 36,
    fontWeight: FontWeight.normal,
    letterSpacing: -1.5,
  );
  TextStyle get h0ForTablet =>
      h0.copyWith(fontSize: h0.fontSize! * _tabletFontScale);

  final TextStyle h1 = GoogleFonts.openSans(
    fontSize: 28,
    fontWeight: FontWeight.normal,
    letterSpacing: -1.5,
  );
  TextStyle get h1ForTablet =>
      h1.copyWith(fontSize: h1.fontSize! * _tabletFontScale);

  final TextStyle h2 = GoogleFonts.openSans(
    fontSize: 22,
    fontWeight: FontWeight.normal,
    letterSpacing: -1,
  );
  TextStyle get h2ForTablet =>
      h2.copyWith(fontSize: h2.fontSize! * _tabletFontScale);

  final TextStyle h3 = GoogleFonts.openSans(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    letterSpacing: -0.5,
  );
  TextStyle get h3ForTablet =>
      h3.copyWith(fontSize: h3.fontSize! * _tabletFontScale);

  final TextStyle large = GoogleFonts.openSans(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    letterSpacing: 0,
  );
  TextStyle get largeForTablet =>
      large.copyWith(fontSize: large.fontSize! * _tabletFontScale);

  final TextStyle body = GoogleFonts.openSans(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.5,
  );
  TextStyle get bodyForTablet =>
      body.copyWith(fontSize: body.fontSize! * _tabletFontScale);

  final TextStyle small = GoogleFonts.openSans(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    letterSpacing: 1,
  );
  TextStyle get smallForTablet =>
      small.copyWith(fontSize: small.fontSize! * _tabletFontScale);
}

class Medium {
  Medium();
  final TextStyle h0 = GoogleFonts.openSans(
    fontSize: 36,
    fontWeight: FontWeight.w500,
    letterSpacing: -1.5,
  );
  TextStyle get h0ForTablet =>
      h0.copyWith(fontSize: h0.fontSize! * _tabletFontScale);

  final TextStyle h1 = GoogleFonts.openSans(
    fontSize: 28,
    fontWeight: FontWeight.w500,
    letterSpacing: -1.5,
  );
  TextStyle get h1ForTablet =>
      h1.copyWith(fontSize: h1.fontSize! * _tabletFontScale);

  final TextStyle h2 = GoogleFonts.openSans(
    fontSize: 22,
    fontWeight: FontWeight.w500,
    letterSpacing: -1,
  );
  TextStyle get h2ForTablet =>
      h2.copyWith(fontSize: h2.fontSize! * _tabletFontScale);

  final TextStyle h3 = GoogleFonts.openSans(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    letterSpacing: -0.5,
  );
  TextStyle get h3ForTablet =>
      h3.copyWith(fontSize: h3.fontSize! * _tabletFontScale);

  final TextStyle large = GoogleFonts.openSans(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
  );
  TextStyle get largeForTablet =>
      large.copyWith(fontSize: large.fontSize! * _tabletFontScale);

  final TextStyle body = GoogleFonts.openSans(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
  );
  TextStyle get bodyForTablet =>
      body.copyWith(fontSize: body.fontSize! * _tabletFontScale);

  final TextStyle small = GoogleFonts.openSans(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    letterSpacing: 1,
  );
  TextStyle get smallForTablet =>
      small.copyWith(fontSize: small.fontSize! * _tabletFontScale);
}

class SemiBold {
  SemiBold();
  final TextStyle h0 = GoogleFonts.openSans(
    fontSize: 36,
    fontWeight: FontWeight.w600,
    letterSpacing: -1.5,
  );
  TextStyle get h0ForTablet =>
      h0.copyWith(fontSize: h0.fontSize! * _tabletFontScale);

  final TextStyle h1 = GoogleFonts.openSans(
    fontSize: 28,
    fontWeight: FontWeight.w600,
    letterSpacing: -1.5,
  );
  TextStyle get h1ForTablet =>
      h1.copyWith(fontSize: h1.fontSize! * _tabletFontScale);

  final TextStyle h2 = GoogleFonts.openSans(
    fontSize: 22,
    fontWeight: FontWeight.w600,
    letterSpacing: -1,
  );
  TextStyle get h2ForTablet =>
      h2.copyWith(fontSize: h2.fontSize! * _tabletFontScale);

  final TextStyle h3 = GoogleFonts.openSans(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.5,
  );
  TextStyle get h3ForTablet =>
      h3.copyWith(fontSize: h3.fontSize! * _tabletFontScale);

  final TextStyle large = GoogleFonts.openSans(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
  );
  TextStyle get largeForTablet =>
      large.copyWith(fontSize: large.fontSize! * _tabletFontScale);

  final TextStyle body = GoogleFonts.openSans(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.5,
  );
  TextStyle get bodyForTablet =>
      body.copyWith(fontSize: body.fontSize! * _tabletFontScale);

  final TextStyle small = GoogleFonts.openSans(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    letterSpacing: 1,
  );
  TextStyle get smallForTablet =>
      small.copyWith(fontSize: small.fontSize! * _tabletFontScale);
}

class Bold {
  Bold();
  final TextStyle h0 = GoogleFonts.openSans(
    fontSize: 36,
    fontWeight: FontWeight.bold,
    letterSpacing: -1.5,
  );
  TextStyle get h0ForTablet =>
      h0.copyWith(fontSize: h0.fontSize! * _tabletFontScale);

  final TextStyle h1 = GoogleFonts.openSans(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    letterSpacing: -1.5,
  );
  TextStyle get h1ForTablet =>
      h1.copyWith(fontSize: h1.fontSize! * _tabletFontScale);

  final TextStyle h2 = GoogleFonts.openSans(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    letterSpacing: -1,
  );
  TextStyle get h2ForTablet =>
      h2.copyWith(fontSize: h2.fontSize! * _tabletFontScale);

  final TextStyle h3 = GoogleFonts.openSans(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    letterSpacing: -0.5,
  );
  TextStyle get h3ForTablet =>
      h3.copyWith(fontSize: h3.fontSize! * _tabletFontScale);

  final TextStyle large = GoogleFonts.openSans(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    letterSpacing: 0,
  );
  TextStyle get largeForTablet =>
      large.copyWith(fontSize: large.fontSize! * _tabletFontScale);

  final TextStyle body = GoogleFonts.openSans(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.5,
  );
  TextStyle get bodyForTablet =>
      body.copyWith(fontSize: body.fontSize! * _tabletFontScale);

  final TextStyle small = GoogleFonts.openSans(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    letterSpacing: 1,
  );
  TextStyle get smallForTablet =>
      small.copyWith(fontSize: small.fontSize! * _tabletFontScale);
}

class ExtraBold {
  ExtraBold();
  final TextStyle h0 = GoogleFonts.openSans(
    fontSize: 36,
    fontWeight: FontWeight.w800,
    letterSpacing: 1.5,
  );
  TextStyle get h0ForTablet =>
      h0.copyWith(fontSize: h0.fontSize! * _tabletFontScale);

  final TextStyle h1 = GoogleFonts.openSans(
    fontSize: 28,
    fontWeight: FontWeight.w800,
    letterSpacing: -1.5,
  );
  TextStyle get h1ForTablet =>
      h1.copyWith(fontSize: h1.fontSize! * _tabletFontScale);

  final TextStyle h2 = GoogleFonts.openSans(
    fontSize: 22,
    fontWeight: FontWeight.w800,
    letterSpacing: -1,
  );
  TextStyle get h2ForTablet =>
      h2.copyWith(fontSize: h2.fontSize! * _tabletFontScale);

  final TextStyle h3 = GoogleFonts.openSans(
    fontSize: 18,
    fontWeight: FontWeight.w800,
    letterSpacing: -0.5,
  );
  TextStyle get h3ForTablet =>
      h3.copyWith(fontSize: h3.fontSize! * _tabletFontScale);

  final TextStyle large = GoogleFonts.openSans(
    fontSize: 16,
    fontWeight: FontWeight.w800,
    letterSpacing: 0,
  );
  TextStyle get largeForTablet =>
      large.copyWith(fontSize: large.fontSize! * _tabletFontScale);

  final TextStyle body = GoogleFonts.openSans(
    fontSize: 14,
    fontWeight: FontWeight.w800,
    letterSpacing: 0.5,
  );
  TextStyle get bodyForTablet =>
      body.copyWith(fontSize: body.fontSize! * _tabletFontScale);

  final TextStyle small = GoogleFonts.openSans(
    fontSize: 12,
    fontWeight: FontWeight.w800,
    letterSpacing: 1,
  );
  TextStyle get smallForTablet =>
      small.copyWith(fontSize: small.fontSize! * _tabletFontScale);
}
