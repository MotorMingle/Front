import 'package:flutter/material.dart';

import '../ui/gradient_builder.dart';
import 'colors.dart' as colors;

@immutable
class AppConstants {
  Gradient get gradient => const Gradient();

  GradientAlignments get gradientAlignments => const GradientAlignments();

  GradientRadius get gradientRadius => const GradientRadius();

  BorderRadius get borderRadius => const BorderRadius();

  MatchButton get matchButton => const MatchButton();

  ActionButton get actionButton => const ActionButton();

  IconText get iconText => const IconText();

  SizedBoxSize get sizedBoxSize => const SizedBoxSize();

  const AppConstants();
}

class Gradient {
  static var primary = [
    GradientBuilder(
        colors.GradientColors.yellowToRed, colors.GradientStops.yellowToRed)
        .center(GradientAlignments.center)
        .radius(GradientRadius.global)
        .buildRadial(),
    GradientBuilder(colors.GradientColors.darkRedToTransparent,
        colors.GradientStops.darkRedToTransparent)
        .begin(GradientAlignments.begin)
        .end(GradientAlignments.end)
        .buildLinear(),
  ];

  const Gradient();
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

class MatchButton {
  static const width = 80.0;
  static const height = 80.0;

  const MatchButton();
}

class ChipButton {
  static const width = 15.0;
  static const height = 15.0;
  static const borderRadius = 15.0;

  const ChipButton();
}

class ActionButton {
  static const paddingX = 10.0;
  static const paddingY = 5.0;
  static const fontSize = 12.0;
  static const iconHeight = 12.0;
  static const iconWidth = 12.0;
  static const sizeBoxWidth = 3.0;

  const ActionButton();
}

class StatusTag {
  static const width = 12.0;
  static const height = 12.0;

  const StatusTag();
}

class LabelTag {
  static const paddingX = 10.0;
  static const paddingY = 5.0;
  static const fontSize = 12.0;

  const LabelTag();
}

class IconText {
  static const fontSize = 12.0;
  static const iconHeight = 12.0;
  static const iconWidth = 12.0;

  const IconText();
}

class SizedBoxSize {
  static const globalWidth = 50.0;

  const SizedBoxSize();
}
