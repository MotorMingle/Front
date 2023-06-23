import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:front/src/themes/colors.dart' as colors;
import 'package:front/src/themes/constants.dart' as constants;

class IconTextBuilder {
  late final String _text;
  late final String _iconPath;
  Color? _textColor;
  Color? _iconColor;
  List<Gradient>? _gradients;
  double? _fontSize;
  double? _iconWidth;
  double? _iconHeight;

  IconTextBuilder(
    String text,
    String iconPath,
  ) {
    _text = text;
    _iconPath = iconPath;
    _textColor = colors.Colors.greySuit;
    _iconColor = colors.Colors.greySuit;
    _fontSize = constants.IconText.fontSize;
    _iconWidth = constants.IconText.iconWidth;
    _iconHeight = constants.IconText.iconHeight;
  }

  IconTextBuilder textColor(Color textColor) {
    _textColor = textColor;
    return this;
  }

  IconTextBuilder iconColor(Color iconColor) {
    _iconColor = iconColor;
    return this;
  }

  IconTextBuilder gradients(List<Gradient> gradients) {
    _gradients = gradients;
    return this;
  }

  IconTextBuilder fontSize(double fontSize) {
    _fontSize = fontSize;
    return this;
  }

  IconTextBuilder iconWidth(double iconWidth) {
    _iconWidth = iconWidth;
    return this;
  }

  IconTextBuilder iconHeight(double iconHeight) {
    _iconHeight = iconHeight;
    return this;
  }

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _gradients == null
            ? SvgPicture.asset(
                _iconPath,
                colorFilter: ColorFilter.mode(
                  _iconColor!,
                  BlendMode.srcIn,
                ),
                width: _iconWidth,
                height: _iconHeight,
              )
            : ShaderMask(
                shaderCallback: (Rect bounds) {
                  return _gradients!.elementAt(0).createShader(bounds);
                },
                child: SvgPicture.asset(
                  _iconPath,
                  width: _iconWidth,
                  height: _iconHeight,
                ),
              ),
        const SizedBox(width: 4.0),
        Text(
          _text,
          style: TextStyle(
            color: _textColor,
            fontSize: _fontSize,
          ),
        ),
      ],
    );
  }
}
