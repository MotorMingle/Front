import 'package:flutter/material.dart';

@immutable
class AppConstants {
  GradientAlignments get gradientAlignments => const GradientAlignments();

  GradientRadius get gradientRadius => const GradientRadius();

  BorderRadius get borderRadius => const BorderRadius();

  MatchButtonSize get matchButtonSize => const MatchButtonSize();

  ActionButton get actionButton => const ActionButton();

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
  static const global = 35.0;

  const BorderRadius();
}

class MatchButtonSize {
  static const width = 80.0;
  static const height = 80.0;

  const MatchButtonSize();
}

class ActionButton {
  static const paddingX = 20.0;
  static const paddingY = 20.0;
  static const fontSize = 20.0;
  static const iconHeight = 20.0;
  static const iconWidth = 20.0;

  const ActionButton();
}

class SizedBoxSize {
  static const globalWidth = 50.0;

  const SizedBoxSize();
}
