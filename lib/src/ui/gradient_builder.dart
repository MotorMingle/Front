import 'package:flutter/material.dart';

class GradientBuilder {
  // LINEAR
  Alignment? _begin;
  Alignment? _end;

  // RADIAL
  Alignment? _center;
  double? _radius;

  // BOTH
  List<Color>? _colors;
  List<double>? _stops;

  GradientBuilder(List<Color> colors, List<double> stops) {
    _colors = colors;
    _stops = stops;
  }

  GradientBuilder begin(Alignment begin) {
    _begin = begin;
    return this;
  }

  GradientBuilder end(Alignment end) {
    _end = end;
    return this;
  }

  GradientBuilder center(Alignment center) {
    _center = center;
    return this;
  }

  GradientBuilder radius(double radius) {
    _radius = radius;
    return this;
  }

  RadialGradient buildRadial() {
    return RadialGradient(
      center: _center!,
      radius: _radius!,
      stops: _stops!,
      colors: _colors!,
    );
  }

  LinearGradient buildLinear() {
    return LinearGradient(
      begin: _begin!,
      end: _end!,
      stops: _stops!,
      colors: _colors!,
    );
  }
}
