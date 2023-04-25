import 'package:flutter/material.dart';

import 'colors.dart';

@immutable
class AppTheme {
  static const colors = AppColors();

  const AppTheme._();

  static ThemeData define() {
    return ThemeData(
      primaryColor: colors.red,
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: colors.orange),
    );
  }
}