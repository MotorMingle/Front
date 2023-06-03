import 'package:flutter/material.dart';

@immutable
class AppConstants {
  GradientAlignments get gradientAlignments => const GradientAlignments();

  GradientRadius get gradientRadius => const GradientRadius();

  BorderRadius get borderRadius => const BorderRadius();

  ButtonSize get buttonSize => const ButtonSize();

  SizedBoxSize get sizedBoxSize => const SizedBoxSize();

  const AppConstants();
}

class GradientAlignments {
  static const begin = Alignment(-0.7, -1);
  static const end = Alignment(0, 0.5);
  static const center = Alignment(-0.4, 1.2);

  const GradientAlignments();
}

class GradientRadius {
  static const global = 1.2;

  const GradientRadius();
}

class BorderRadius {
  static const global = 28.0;

  const BorderRadius();
}

class ButtonSize {
  static const width = 80.0;
  static const height = 80.0;

  const ButtonSize();
}

class SizedBoxSize {
  static const globalWidth = 50.0;

  const SizedBoxSize();
}
