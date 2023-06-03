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

  ActionButtonBuilder(
    String iconPath,
    String text,
    Color color,
    VoidCallback onPressed, {
    Color? backgroundColor = colors.Colors.lightGrey,
    double? paddingX = constants.ActionButton.paddingX,
    double? paddingY = constants.ActionButton.paddingY,
    double? borderRadius = constants.BorderRadius.global,
    double? fontSize = constants.ActionButton.fontSize,
    double? iconHeight = constants.ActionButton.iconHeight,
    double? iconWidth = constants.ActionButton.iconWidth,
  }) {
    _iconPath = iconPath;
    _text = text;
    _color = color;
    _onPressed = onPressed;
    _backgroundColor = backgroundColor;
    _paddingX = paddingX;
    _paddingY = paddingY;
    _borderRadius = borderRadius;
    _fontSize = fontSize;
    _iconHeight = iconHeight;
    _iconWidth = iconWidth;
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
