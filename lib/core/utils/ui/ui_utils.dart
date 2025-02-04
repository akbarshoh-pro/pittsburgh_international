import 'package:flutter/material.dart';

import '../../../config/theme/font_scheme.dart';


extension SizedBoxExtension on int {
  SizedBox get pw => SizedBox(width: toDouble());
  SizedBox get ph => SizedBox(height: toDouble());
}

extension ThemeFontSchemeExtension on BuildContext {
  FontScheme get fontScheme => fontSchemes;
}

extension BuildContextScreenSize on BuildContext {
  Size get size => MediaQuery.of(this).size;
}

extension BuildContextScreenWidth on BuildContext {
  double get width => MediaQuery.of(this).size.width;
}

extension BuildContextScreenHeight on BuildContext {
  double get height => MediaQuery.of(this).size.height;
}

extension BuildContextPaddingTop on BuildContext {
  double get paddingTop => MediaQuery.of(this).padding.top;
}