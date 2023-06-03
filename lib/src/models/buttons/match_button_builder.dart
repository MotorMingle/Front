import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:front/src/models/buttons/button_builder.dart';
import 'package:front/src/themes/colors.dart' as colors;
import 'package:front/src/themes/constants.dart' as constants;

class MatchButtonBuilder {
  late final String _iconPath; // Child widget
  late final Color _iconColor; // Child widget
  late final VoidCallback _onPressed;
  Color? _backgroundColor;
  List<Gradient>? _gradients;
  double? _width;
  double? _height;
  double? _borderRadius;

  MatchButtonBuilder(
    String iconPath,
    Color iconColor,
    VoidCallback onPressed,
  ) {
    _iconPath = iconPath;
    _iconColor = iconColor;
    _onPressed = onPressed;
    _backgroundColor = colors.Colors.lightGrey;
    _width = constants.MatchButtonSize.width;
    _height = constants.MatchButtonSize.height;
    _borderRadius = constants.BorderRadius.global;
  }

  MatchButtonBuilder backgroundColor(Color backgroundColor) {
    _backgroundColor = backgroundColor;
    return this;
  }

  MatchButtonBuilder gradients(List<Gradient> gradients) {
    _gradients = gradients;
    return this;
  }

  MatchButtonBuilder width(double width) {
    _width = width;
    return this;
  }

  MatchButtonBuilder height(double height) {
    _height = height;
    return this;
  }

  MatchButtonBuilder borderRadius(double borderRadius) {
    _borderRadius = borderRadius;
    return this;
  }

  Widget build(BuildContext context) {
    return ButtonBuilder(
      SvgPicture.asset(
        _iconPath,
        colorFilter: ColorFilter.mode(
          _iconColor,
          BlendMode.srcIn,
        ),
        width: _width! / 2,
        height: _height! / 2,
      ),
      _onPressed,
      _backgroundColor!,
      _borderRadius!,
      gradients: _gradients,
      height: _height,
      width: _width,
    );
  }
}
