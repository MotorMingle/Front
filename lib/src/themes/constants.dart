import 'package:flutter/material.dart';

@immutable
class AppConstants {
  final GradientAlignments gradientAlignments = GradientAlignments();
  final GradientRadius gradientRadius = GradientRadius();
  final BorderRadius borderRadius = BorderRadius();
  final ButtonSize buttonSize = ButtonSize();

  AppConstants();
}

class GradientAlignments {
  final begin = const Alignment(-0.7, -1);
  final end = const Alignment(0, 0.5);
  final center = const Alignment(-0.4, 1.2);
}

class GradientRadius {
  final global = 1.2;
}

class BorderRadius {
  final global = 25.0;
}

class ButtonSize {
  final width = 80.0;
  final height = 80.0;
}
