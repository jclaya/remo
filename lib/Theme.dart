import 'package:flutter/material.dart';

class Colors {
  const Colors();

  static const Color loginGradientStart = const Color(0xFF37393A);
  static const Color loginGradientEnd = const Color(0xFF77B6EA);

  static const primaryGradient = const LinearGradient(
    colors: const [loginGradientStart, loginGradientEnd],
    stops: const [0.0, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const Color appBarTitle = const Color(0xFFFFFFFF);
  static const Color appBarIconColor = const Color(0xFFFFFFFF);
  static const Color appBarDetailBackground = const Color(0x00FFFFFF);
  static const Color appBarGradientStart = const Color(0xFF77B6EA);
  static const Color appBarGradientEnd = const Color(0xFF37393A);

  //static const Color billCard = const Color(0xFF434273);
  static const Color billCard = const Color(0xFF37393A);
  //static const Color billListBackground = const Color(0xFF3E3963);
  static const Color billPageBackground = const Color(0xFF77B6EA);
  static const Color billTitle = const Color(0xFFFFFFFF);
  static const Color billPrevious = const Color(0x66FFFFFF);
  static const Color billCurrent = const Color(0x66FFFFFF);
}

class Dimens {
  const Dimens();

  static const billWidth = 100.0;
  static const billHeight = 100.0;
}

class TextStyles {
  const TextStyles();

  static const TextStyle appBarTitle = const TextStyle(
      color: Colors.appBarTitle,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
      fontSize: 36.0);

  static const TextStyle billTitle = const TextStyle(
      color: Colors.billTitle,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
      fontSize: 24.0);

  static const TextStyle billPrevious = const TextStyle(
      color: Colors.billPrevious,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w300,
      fontSize: 14.0);

  static const TextStyle billCurrent = const TextStyle(
      color: Colors.billCurrent,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w300,
      fontSize: 12.0);
}
