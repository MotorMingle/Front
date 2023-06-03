import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:front/src/models/buttons/button_builder.dart';
import 'package:front/src/themes/colors.dart' as colors;
import 'package:front/src/themes/constants.dart' as constants;

class ActionButtonBuilder {
  late final String _iconPath; // Child widget
  late final String _text; // Child widget
  late final Color _color; // Child widget
  late final VoidCallback _onPressed;
  Color? _backgroundColor;
  double? _paddingX;
  double? _paddingY;
  double? _borderRadius;
  double? _fontSize; // Child widget
  double? _iconHeight; // Child widget
  double? _iconWidth; // Child widget

  ActionButtonBuilder(String iconPath,
      String text,
      Color color,
      VoidCallback onPressed,) {
    _iconPath = iconPath;
    _text = text;
    _color = color;
    _onPressed = onPressed;
    _backgroundColor = colors.Colors.lightGrey;
    _paddingX = constants.ActionButton.paddingX;
    _paddingY = constants.ActionButton.paddingY;
    _borderRadius = constants.BorderRadius.global;
    _fontSize = constants.ActionButton.fontSize;
    _iconHeight = constants.ActionButton.iconHeight;
    _iconWidth = constants.ActionButton.iconWidth;
  }

  ActionButtonBuilder backgroundColor(Color backgroundColor) {
    _backgroundColor = backgroundColor;
    return this;
  }

  ActionButtonBuilder paddingX(double paddingX) {
    _paddingX = paddingX;
    return this;
  }

  ActionButtonBuilder paddingY(double paddingY) {
    _paddingY = paddingY;
    return this;
  }

  ActionButtonBuilder borderRadius(double borderRadius) {
    _borderRadius = borderRadius;
    return this;
  }

  ActionButtonBuilder fontSize(double fontSize) {
    _fontSize = fontSize;
    return this;
  }

  ActionButtonBuilder iconHeight(double iconHeight) {
    _iconHeight = iconHeight;
    return this;
  }

  ActionButtonBuilder iconWidth(double iconWidth) {
    _iconWidth = iconWidth;
    return this;
  }

  Widget build(BuildContext context) {
    return ButtonBuilder(
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            _iconPath,
            colorFilter: ColorFilter.mode(
              _color,
              BlendMode.srcIn,
            ),
            width: _iconWidth,
            height: _iconHeight,
          ),
          const SizedBox(
            width: 3.0,
          ),
          Text(
            _text,
            style: TextStyle(
              color: _color,
              fontSize: _fontSize,
            ),
          ),
        ],
      ),
      _onPressed,
      _backgroundColor!,
      _borderRadius!,
      paddingX: _paddingX,
      paddingY: _paddingY,
    );
  }
}
