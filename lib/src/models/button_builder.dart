import 'package:flutter/material.dart';

class ButtonBuilder extends StatelessWidget {
  Widget? _child;
  VoidCallback? _onPressed;
  double? _width;
  double? _height;
  double? _borderRadius;
  List<Gradient>? _gradients;
  Color? _color;

  ButtonBuilder(
    VoidCallback onPressed,
    double width,
    double height,
    Widget child, {
    super.key,
    double borderRadius = 0.0,
  }) {
    _child = child;
    _onPressed = onPressed;
    _width = width;
    _height = height;
    _borderRadius = borderRadius;
  }

  ButtonBuilder borderRadius(double borderRadius) {
    _borderRadius = borderRadius;
    return this;
  }

  ButtonBuilder color(Color color) {
    _color = color;
    return this;
  }

  ButtonBuilder gradients(List<Gradient> gradients) {
    _gradients = gradients;
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _width,
      height: _height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(_borderRadius!),
        gradient: _gradients?.first,
        color: _color,
      ),
      child: Stack(
        children: [
          for (var gradient in _gradients ?? [])
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(_borderRadius!),
                gradient: gradient,
              ),
            ),
          Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(_borderRadius!),
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
