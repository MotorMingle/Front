import 'package:flutter/material.dart';

import 'colors.dart';
import 'constants.dart';

@immutable
class AppTheme {
  static AppColors colors = AppColors();
  static AppConstants constants = AppConstants();

  const AppTheme._();

  static ThemeData define() {
    return ThemeData();
  }
}
