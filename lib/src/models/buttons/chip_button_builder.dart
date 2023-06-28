import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:front/src/models/buttons/button_builder.dart';
import 'package:front/src/themes/colors.dart' as colors;
import 'package:front/src/themes/constants.dart' as constants;

class ChipButtonBuilder {
  late final String _iconPath; // Child widget
  late final Color _iconColor; // Child widget
  late final VoidCallback _onPressed;
  Color? _backgroundColor;
  List<Gradient>? _gradients;
  double? _width;
  double? _height;
  double? _borderRadius;

  ChipButtonBuilder(
    String iconPath,
    Color iconColor,
    VoidCallback onPressed,
  ) {
    _iconPath = iconPath;
    _iconColor = iconColor;
    _onPressed = onPressed;
    _backgroundColor = colors.Colors.lightGrey;
    _width = constants.ChipButton.width;
    _height = constants.ChipButton.height;
    _borderRadius = constants.ChipButton.borderRadius;
  }

  ChipButtonBuilder backgroundColor(Color backgroundColor) {
    _backgroundColor = backgroundColor;
    return this;
  }

  ChipButtonBuilder gradients(List<Gradient> gradients) {
    _gradients = gradients;
    return this;
  }

  ChipButtonBuilder width(double width) {
    _width = width;
    return this;
  }

  ChipButtonBuilder height(double height) {
    _height = height;
    return this;
  }

  ChipButtonBuilder borderRadius(double borderRadius) {
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
