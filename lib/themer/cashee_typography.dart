import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CasheeTypography extends TextTheme {
  final TextStyle heading1;
  final TextStyle heading2;
  final TextStyle heading3;
  final TextStyle heading4;
  final TextStyle body1;
  final TextStyle body1Highlight;
  final TextStyle body2;
  final TextStyle body2Highlight;
  final TextStyle captionS;
  final TextStyle captionHighlight;
  final TextStyle tiny;
  final TextStyle tinyHighlight;
  final TextStyle balanceL;
  final TextStyle transactionAmount;
  final TextStyle inputBody;

  const CasheeTypography({
    required this.heading1,
    required this.heading2,
    required this.heading3,
    required this.heading4,
    required this.body1,
    required this.body1Highlight,
    required this.body2,
    required this.body2Highlight,
    required this.captionS,
    required this.captionHighlight,
    required this.tiny,
    required this.tinyHighlight,
    required this.balanceL,
    required this.transactionAmount,
    required this.inputBody,
  });

  static CasheeTypography get mobileTextTheme {
    return CasheeTypography(
      heading1: GoogleFonts.workSans(
        textStyle: const TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: 32,
          letterSpacing: 0,
        ),
      ),
      heading2: GoogleFonts.workSans(
        textStyle: const TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: 28,
          letterSpacing: 0,
        ),
      ),
      heading3: GoogleFonts.workSans(
        textStyle: const TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: 24,
          letterSpacing: 0,
        ),
      ),
      heading4: GoogleFonts.workSans(
        textStyle: const TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: 20,
          letterSpacing: 0,
        ),
      ),
      body1: GoogleFonts.workSans(
        textStyle: const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 16,
          letterSpacing: 0,
        ),
      ),
      body1Highlight: GoogleFonts.workSans(
        textStyle: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 16,
          letterSpacing: 0,
        ),
      ),
      body2: GoogleFonts.workSans(
        textStyle: const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          letterSpacing: 0,
        ),
      ),
      body2Highlight: GoogleFonts.workSans(
        textStyle: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 14,
          letterSpacing: 0,
        ),
      ),
      captionS: GoogleFonts.workSans(
        textStyle: const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 12,
          letterSpacing: 0,
        ),
      ),
      captionHighlight: GoogleFonts.workSans(
        textStyle: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 12,
          letterSpacing: 0,
        ),
      ),
      tiny: GoogleFonts.workSans(
        textStyle: const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 10,
          letterSpacing: 0,
        ),
      ),
      tinyHighlight: GoogleFonts.workSans(
        textStyle: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 10,
          letterSpacing: 0,
        ),
      ),
      balanceL: GoogleFonts.workSans(
        textStyle: const TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: 48,
          letterSpacing: 0,
        ),
      ),
      transactionAmount: GoogleFonts.workSans(
        textStyle: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 18,
          letterSpacing: 0,
        ),
      ),
      inputBody: GoogleFonts.workSans(
        textStyle: const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 16,
          letterSpacing: 0,
        ),
      ),
    );
  }
}
