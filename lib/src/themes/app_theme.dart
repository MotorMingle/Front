import 'package:flutter/material.dart';

import 'colors.dart';

@immutable
class AppTheme {
  static AppColors colors = AppColors();

  const AppTheme._();

  static ThemeData define() {
    return ThemeData();
  }
}