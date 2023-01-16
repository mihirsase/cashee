import 'package:flutter/material.dart';

class Pallete {
  static const MaterialColor N = MaterialColor(
    0xff969699,
    <int, Color>{
      000: Color(0xffFFFFFF),
      100: Color(0xffEAEAEB),
      200: Color(0xffCBCBCC),
      300: Color(0xffCBCBCC),
      400: Color(0xffABABAD),
      500: Color(0xff969699),
      600: Color(0xff78787A),
      700: Color(0xff5A5A5C),
      800: Color(0xff3C3C3D),
      900: Color(0xff1E1E1F),
      950: Color(0xff0F0F0F),
      999: Color(0xff000000),
    },
  );

  static const MaterialColor P = MaterialColor(
    0xff22F578,
    <int, Color>{
      100: Color(0xffBFFFD7),
      200: Color(0xff9DFCC0),
      300: Color(0xff75FAA6),
      400: Color(0xff22F578),
      500: Color(0xff1FDD6C),
      600: Color(0xff1BC460),
      700: Color(0xff149348),
      800: Color(0xff0E6230),
      900: Color(0xff073118),
      950: Color(0xff02170D),
    },
  );

  static const MaterialColor F = MaterialColor(
    0xffFF3B4B,
    <int, Color>{
      400: Color(0xffFF3B4B),
      500: Color(0xffD93240),
      600: Color(0xffB32935),
      800: Color(0xff66181E),
      900: Color(0xff330C0F),
    },
  );

  static const MaterialColor Y = MaterialColor(
    0xffFFF014,
    <int, Color>{
      400: Color(0xffFFF014),
      500: Color(0xffE6D812),
      600: Color(0xffB3A80E),
      800: Color(0xff80720A),
      900: Color(0xff332B04),
    },
  );

  static const MaterialColor B = MaterialColor(
    0xff00E3EB,
    <int, Color>{
      400: Color(0xff00E3EB),
      500: Color(0xff00C4CC),
      600: Color(0xff009FA5),
      800: Color(0xff007276),
      900: Color(0xff002D2F),
    },
  );

  static const MaterialColor R = MaterialColor(
    0xffFF3DB8,
    <int, Color>{
      400: Color(0xffFF3DB8),
      500: Color(0xffDE35A0),
      600: Color(0xffC4318E),
      800: Color(0xff99256E),
      900: Color(0xff330C25),
    },
  );

  static const MaterialColor I = MaterialColor(
    0xff602BFF,
    <int, Color>{
      400: Color(0xff602BFF),
      500: Color(0xff5426E0),
      600: Color(0xff4B21C7),
      800: Color(0xff3A1A99),
      900: Color(0xff231166),
    },
  );

  static Color get core01 {
    return N[000]!;
  }

  static Color get core02 {
    return N[999]!;
  }

  static Color get bg0 {
    return N[999]!;
  }

  static Color get bg1 {
    return N[950]!;
  }

  static Color get bg2 {
    return N[900]!;
  }

  static Color get bg3 {
    return N[800]!;
  }

  static Color get bg4 {
    return F[900]!;
  }

  static Color get text1 {
    return N[000]!;
  }

  static Color get text2 {
    return N[500]!;
  }

  static Color get text3 {
    return N[000]!.withOpacity(0.6);
  }

  static Color get text4 {
    return N[200]!;
  }

  static Color get text5 {
    return P[400]!;
  }

  static Color get text6 {
    return F[400]!;
  }

  static Color get text7 {
    return N[999]!;
  }

  static Color get textHighlight {
    return N[800]!;
  }

  static Color get interactive1 {
    return P[400]!;
  }

  static Color get interactive1Pressed1 {
    return P[600]!;
  }

  static Color get interactive1Text {
    return N[999]!;
  }

  static Color get interactive2 {
    return P[400]!;
  }

  static Color get interactive2Pressed {
    return P[950]!;
  }

  static Color get interactive3 {
    return N[000]!;
  }

  static Color get interactive3Bg {
    return N[900]!.withOpacity(0.8);
  }

  static Color get interactive3BgPressed {
    return N[900]!.withOpacity(0.5);
  }

  static Color get interactive4 {
    return N[500]!;
  }

  static Color get disabled1 {
    return N[800]!.withOpacity(0.5);
  }

  static Color get special1 {
    return P[300]!;
  }

  static Color get green {
    return P[400]!;
  }

  static Color get blue {
    return B[400]!;
  }

  static Color get yellow {
    return Y[400]!;
  }

  static Color get pink {
    return R[400]!;
  }

  static Color get violet {
    return I[400]!;
  }
}
