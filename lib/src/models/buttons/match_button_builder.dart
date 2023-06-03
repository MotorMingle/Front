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
    VoidCallback onPressed, {
    Color? backgroundColor = colors.Colors.lightGrey,
    List<Gradient>? gradients,
    double? width = constants.MatchButtonSize.width / 2,
    double? height = constants.MatchButtonSize.height / 2,
    double? borderRadius = constants.BorderRadius.global,
  }) {
    _iconPath = iconPath;
    _iconColor = iconColor;
    _onPressed = onPressed;
    _backgroundColor = backgroundColor;
    _gradients = gradients;
    _width = width;
    _height = height;
    _borderRadius = borderRadius;
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
