import 'package:flutter/material.dart';

class TagBuilder extends StatelessWidget {
  Widget? _child;
  double? _width;
  double? _height;
  double? _paddingX;
  double? _paddingY;
  double? _borderRadius;
  List<Gradient>? _gradients;
  Color? _color;

  TagBuilder(
    Widget child, {
    super.key,
    double borderRadius = 0.0,
  }) {
    _child = child;
    _borderRadius = borderRadius;
  }

  TagBuilder width(double width) {
    _width = width;
    return this;
  }

  TagBuilder height(double height) {
    _height = height;
    return this;
  }

  TagBuilder paddingX(double paddingX) {
    _paddingX = paddingX;
    return this;
  }

  TagBuilder paddingY(double paddingY) {
    _paddingY = paddingY;
    return this;
  }

  TagBuilder borderRadius(double borderRadius) {
    _borderRadius = borderRadius;
    return this;
  }

  TagBuilder color(Color color) {
    _color = color;
    return this;
  }

  TagBuilder gradients(List<Gradient> gradients) {
    _gradients = gradients;
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        for (var gradient in _gradients ?? [])
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(_borderRadius!),
              gradient: gradient,
            ),
          ),
        Center(
            child: Container(
          width: _width,
          height: _height,
          alignment: _paddingX == null ? Alignment.center : null,
          padding: EdgeInsets.symmetric(
            horizontal: _paddingX ?? 0.0,
            vertical: _paddingY ?? 0.0,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(_borderRadius!),
            gradient: _gradients?.first,
            color: _color,
          ),
          child: _child,
        )),
      ],
    );
  }
}
