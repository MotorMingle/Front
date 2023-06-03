import 'package:flutter/material.dart';

import 'colors.dart';
import 'constants.dart';

@immutable
class AppTheme {
  static const AppColors colors = AppColors();
  static const AppConstants constants = AppConstants();

  const AppTheme._();

  static ThemeData define() {
    return ThemeData(
      fontFamily: 'DMSans',
    );
  }
}
