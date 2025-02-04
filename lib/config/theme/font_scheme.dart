import 'package:flutter/material.dart';

class FontScheme {
  final TextStyle headingLargeRegular;
  final TextStyle headingLargeMedium;
  final TextStyle headingLargeSemiBold;
  final TextStyle headingMediumRegular;
  final TextStyle headingMediumMedium;
  final TextStyle headingMediumSemiBold;
  final TextStyle headingSmallRegular;
  final TextStyle headingSmallMedium;
  final TextStyle headingSmallSemiBold;

  final TextStyle titleLargeRegular;
  final TextStyle titleLargeMedium;
  final TextStyle titleLargeSemiBold;
  final TextStyle titleMediumRegular;
  final TextStyle titleMediumMedium;
  final TextStyle titleMediumSemiBold;
  final TextStyle titleSmallRegular;
  final TextStyle titleSmallMedium;
  final TextStyle titleSmallSemiBold;

  final TextStyle bodyLargeRegular;
  final TextStyle bodyLargeMedium;
  final TextStyle bodyLargeSemiBold;
  final TextStyle bodyMediumRegular;
  final TextStyle bodyMediumMedium;
  final TextStyle bodyMediumSemiBold;
  final TextStyle bodySmallRegular;
  final TextStyle bodySmallMedium;
  final TextStyle bodySmallSemiBold;

  final TextStyle customLargeRegular;
  final TextStyle customLargeMedium;
  final TextStyle customLargeSemiBold;
  final TextStyle customMediumRegular;
  final TextStyle customMediumMedium;
  final TextStyle customMediumSemiBold;
  final TextStyle customMediumBold;
  final TextStyle customSmallRegular;
  final TextStyle customSmallMedium;
  final TextStyle customSmallSemiBold;
  final TextStyle customSmallestRegular;
  final TextStyle customSmallestMedium;
  final TextStyle customSmallestSemiBold;
  final TextStyle custom10;

  FontScheme({
    required this.headingLargeRegular,
    required this.headingLargeMedium,
    required this.headingLargeSemiBold,
    required this.headingMediumRegular,
    required this.headingMediumMedium,
    required this.headingMediumSemiBold,
    required this.headingSmallRegular,
    required this.headingSmallMedium,
    required this.headingSmallSemiBold,
    required this.titleLargeRegular,
    required this.titleLargeMedium,
    required this.titleLargeSemiBold,
    required this.titleMediumRegular,
    required this.titleMediumMedium,
    required this.titleMediumSemiBold,
    required this.titleSmallRegular,
    required this.titleSmallMedium,
    required this.titleSmallSemiBold,
    required this.bodyLargeRegular,
    required this.bodyLargeMedium,
    required this.bodyLargeSemiBold,
    required this.bodyMediumRegular,
    required this.bodyMediumMedium,
    required this.bodyMediumSemiBold,
    required this.bodySmallRegular,
    required this.bodySmallMedium,
    required this.bodySmallSemiBold,
    required this.customLargeRegular,
    required this.customLargeMedium,
    required this.customLargeSemiBold,
    required this.customMediumRegular,
    required this.customMediumMedium,
    required this.customMediumSemiBold,
    required this.customMediumBold,
    required this.customSmallRegular,
    required this.customSmallMedium,
    required this.customSmallSemiBold,
    required this.customSmallestRegular,
    required this.customSmallestMedium,
    required this.customSmallestSemiBold,
    required this.custom10,
  });
}

final fontSchemes = FontScheme(
  headingLargeRegular: createTextStyle('SF PRO DISPLAY', FontWeight.w400, 32, 48),
  headingLargeMedium: createTextStyle('SF PRO DISPLAY', FontWeight.w500, 32, 48),
  headingLargeSemiBold: createTextStyle('SF PRO DISPLAY', FontWeight.w600, 32, 48),
  headingMediumRegular: createTextStyle('SF PRO DISPLAY', FontWeight.w400, 20, 32),
  headingMediumMedium: createTextStyle('SF PRO DISPLAY', FontWeight.w500, 20, 32),
  headingMediumSemiBold: createTextStyle('SF PRO DISPLAY', FontWeight.w600, 20, 32),
  headingSmallRegular: createTextStyle('SF PRO DISPLAY', FontWeight.w400, 16, 24),
  headingSmallMedium: createTextStyle('SF PRO DISPLAY', FontWeight.w500, 16, 24),
  headingSmallSemiBold: createTextStyle('SF PRO DISPLAY', FontWeight.w600, 16, 24),

  titleLargeRegular: createTextStyle('SF PRO DISPLAY', FontWeight.w400, 18, 32),
  titleLargeMedium: createTextStyle('SF PRO DISPLAY', FontWeight.w500, 18, 32),
  titleLargeSemiBold: createTextStyle('SF PRO DISPLAY', FontWeight.w600, 18, 32),
  titleMediumRegular: createTextStyle('SF PRO DISPLAY', FontWeight.w400, 16, 24),
  titleMediumMedium: createTextStyle('SF PRO DISPLAY', FontWeight.w500, 16, 24),
  titleMediumSemiBold: createTextStyle('SF PRO DISPLAY', FontWeight.w600, 16, 24),
  titleSmallRegular: createTextStyle('SF PRO DISPLAY', FontWeight.w400, 14, 24),
  titleSmallMedium: createTextStyle('SF PRO DISPLAY', FontWeight.w500, 14, 24),
  titleSmallSemiBold: createTextStyle('SF PRO DISPLAY', FontWeight.w600, 14, 24),

  bodyLargeRegular: createTextStyle('SF PRO DISPLAY', FontWeight.w400, 14, 20),
  bodyLargeMedium: createTextStyle('SF PRO DISPLAY', FontWeight.w500, 14, 20),
  bodyLargeSemiBold: createTextStyle('SF PRO DISPLAY', FontWeight.w600, 14, 20),
  bodyMediumRegular: createTextStyle('SF PRO DISPLAY', FontWeight.w400, 12, 24),
  bodyMediumMedium: createTextStyle('SF PRO DISPLAY', FontWeight.w500, 12, 24),
  bodyMediumSemiBold: createTextStyle('SF PRO DISPLAY', FontWeight.w600, 12, 24),
  bodySmallRegular: createTextStyle('SF PRO DISPLAY', FontWeight.w400, 12, 20),
  bodySmallMedium: createTextStyle('SF PRO DISPLAY', FontWeight.w500, 12, 20),
  bodySmallSemiBold: createTextStyle('SF PRO DISPLAY', FontWeight.w600, 12, 20),

  customLargeRegular: createTextStyle('SF PRO DISPLAY', FontWeight.w400, 24, 20),
  customLargeMedium: createTextStyle('SF PRO DISPLAY', FontWeight.w400, 24, 20),
  customLargeSemiBold: createTextStyle('SF PRO DISPLAY', FontWeight.w400, 24, 20),
  customMediumRegular: createTextStyle('SF PRO DISPLAY', FontWeight.w400, 20, 32),
  customMediumMedium: createTextStyle('SF PRO DISPLAY', FontWeight.w500, 20, 32),
  customMediumSemiBold: createTextStyle('SF PRO DISPLAY', FontWeight.w600, 20, 32),
  customMediumBold: createTextStyle('SF PRO DISPLAY', FontWeight.w700, 20, 32),
  customSmallRegular: createTextStyle('SF PRO DISPLAY', FontWeight.w400, 20, 24),
  customSmallMedium: createTextStyle('SF PRO DISPLAY', FontWeight.w500, 20, 24),
  customSmallSemiBold: createTextStyle('SF PRO DISPLAY', FontWeight.w600, 20, 24),
  customSmallestRegular: createTextStyle('SF PRO DISPLAY', FontWeight.w400, 10, 12),
  customSmallestMedium: createTextStyle('SF PRO DISPLAY', FontWeight.w500, 10, 12),
  customSmallestSemiBold: createTextStyle('SF PRO DISPLAY', FontWeight.w600, 10, 12),
  custom10: createTextStyle('SF PRO DISPLAY', FontWeight.w600, 10, 10),
);

TextStyle createTextStyle(String fontFamily, FontWeight fontWeight, double fontSize, double lineHeight) {
  return TextStyle(
    fontFamily: fontFamily,
    fontWeight: fontWeight,
    fontSize: fontSize,
    height: lineHeight / fontSize,
  );
}


