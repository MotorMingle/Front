import 'package:flutter/material.dart';
import 'package:front/src/models/tag/tag_builder.dart';
import 'package:front/src/themes/colors.dart' as colors;
import 'package:front/src/themes/constants.dart' as constants;

class LabelTagBuilder {
  late final String _label;

  Color? _labelColor;
  double? _fontSize;
  Color? _backgroundColor;
  List<Gradient>? _gradients;
  double? _borderRadius;
  double? _paddingX;
  double? _paddingY;

  LabelTagBuilder(String label) {
    _label = label;
    _labelColor = colors.Colors.white;
    _fontSize = constants.LabelTag.fontSize;
    _backgroundColor = colors.Colors.orange;
    _borderRadius = constants.BorderRadius.global;
    _paddingX = constants.LabelTag.paddingX;
    _paddingY = constants.LabelTag.paddingY;
  }

  LabelTagBuilder labelColor(Color labelColor) {
    _labelColor = labelColor;
    return this;
  }

  LabelTagBuilder fontSize(double fontSize) {
    _fontSize = fontSize;
    return this;
  }

  LabelTagBuilder backgroundColor(Color backgroundColor) {
    _backgroundColor = backgroundColor;
    return this;
  }

  LabelTagBuilder gradients(List<Gradient> gradients) {
    _gradients = gradients;
    return this;
  }

  LabelTagBuilder borderRadius(double borderRadius) {
    _borderRadius = borderRadius;
    return this;
  }

  LabelTagBuilder paddingX(double paddingX) {
    _paddingX = paddingX;
    return this;
  }

  LabelTagBuilder paddingY(double paddingY) {
    _paddingY = paddingY;
    return this;
  }

  Widget build(BuildContext context) {
    return TagBuilder(Text(
      _label,
      style: TextStyle(
        color: _labelColor,
        fontSize: _fontSize,
      ),
    ), _borderRadius!, _backgroundColor!,
        gradients: _gradients, paddingX: _paddingX, paddingY: _paddingY);
  }
}
