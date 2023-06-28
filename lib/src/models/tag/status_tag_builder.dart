import 'package:flutter/material.dart';
import 'package:front/src/models/tag/tag_builder.dart';
import 'package:front/src/themes/colors.dart' as colors;
import 'package:front/src/themes/constants.dart' as constants;

class StatusTagBuilder {
  Color? _backgroundColor;
  List<Gradient>? _gradients;
  double? _borderRadius;
  double? _width;
  double? _height;

  StatusTagBuilder() {
    _backgroundColor = colors.Colors.grey;
    _borderRadius = constants.BorderRadius.global;
    _width = constants.StatusTag.width;
    _height = constants.StatusTag.height;
  }

  StatusTagBuilder backgroundColor(Color backgroundColor) {
    _backgroundColor = backgroundColor;
    return this;
  }

  StatusTagBuilder gradients(List<Gradient> gradients) {
    _gradients = gradients;
    return this;
  }

  StatusTagBuilder borderRadius(double borderRadius) {
    _borderRadius = borderRadius;
    return this;
  }

  StatusTagBuilder width(double width) {
    _width = width;
    return this;
  }

  StatusTagBuilder height(double height) {
    _height = height;
    return this;
  }

  Widget build(BuildContext context) {
    return TagBuilder(
      Container(),
      _borderRadius!,
      _backgroundColor!,
      width: _width,
      height: _height,
      gradients: _gradients,
    );
  }
}
