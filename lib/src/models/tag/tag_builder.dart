import 'package:flutter/material.dart';

class TagBuilder extends StatelessWidget {
  late final Widget _child;
  late final Color _backgroundColor;
  late final double _borderRadius;

  List<Gradient>? _gradients;
  double? _width;
  double? _height;
  double? _paddingX;
  double? _paddingY;

  TagBuilder(
    Widget child,
    double borderRadius,
    Color backgroundColor, {
    super.key,
    double? width,
    double? height,
    double? paddingX,
    double? paddingY,
    List<Gradient>? gradients,
  }) {
    _child = child;
    _backgroundColor = backgroundColor;
    _borderRadius = borderRadius;
    _width = width;
    _height = height;
    _paddingX = paddingX;
    _paddingY = paddingY;
    _gradients = gradients;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _width,
      height: _height,
      alignment: _paddingX == null ? Alignment.center : null,
      padding: EdgeInsets.symmetric(
        horizontal: _paddingX ?? 0.0,
        vertical: _paddingY ?? 0.0,
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
          _child,
        ],
      ),
    );
  }
}
