import 'package:flutter/material.dart';

class ButtonBuilder extends StatelessWidget {
  late final Widget _child;
  late final VoidCallback _onPressed;
  late final Color _backgroundColor;
  late final double _borderRadius;

  List<Gradient>? _gradients;
  double? _width;
  double? _height;
  double? _paddingX;
  double? _paddingY;

  ButtonBuilder(
    Widget child,
    VoidCallback onPressed,
    Color backgroundColor,
    double borderRadius, {
    super.key,
    List<Gradient>? gradients,
    double? width,
    double? height,
    double? paddingX,
    double? paddingY,
  }) {
    _child = child;
    _onPressed = onPressed;
    _backgroundColor = backgroundColor;
    _borderRadius = borderRadius;
    _gradients = gradients;
    _width = width;
    _height = height;
    _paddingX = paddingX;
    _paddingY = paddingY;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _width,
      height: _height,
      padding: EdgeInsets.symmetric(
        horizontal: _paddingX ?? 0,
        vertical: _paddingY ?? 0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(_borderRadius),
        gradient: _gradients?.first,
        color: _backgroundColor,
      ),
      child: Stack(
        children: [
          for (var gradient in _gradients ?? [])
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(_borderRadius),
                gradient: gradient,
              ),
            ),
          Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(_borderRadius),
              onTap: _onPressed,
              child: Center(
                child: _child,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
