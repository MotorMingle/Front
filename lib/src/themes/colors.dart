import 'package:flutter/material.dart';

@immutable
class AppColors {
  Colors get colors => const Colors();

  GradientColors get gradientColors => const GradientColors();

  GradientStops get gradientStops => const GradientStops();

  const AppColors();
}

class Colors {
  static const yellow = Color(0xfff9c74f);
  static const lightOrange = Color(0xfff9c74f);
  static const orange = Color(0xfff8961e);
  static const darkOrange = Color(0xfff3722c);
  static const red = Color(0xffed070b);
  static const transparent = Color(0x00000000);
  static const red20 = Color.fromRGBO(214, 40, 40, 0.05);
  static const red70 = Color.fromRGBO(214, 40, 40, 0.4);
  static const deepRed = Color.fromRGBO(154, 3, 30, 0.4);
  static const darkRed = Color.fromRGBO(55, 6, 23, 0.5);
  static const lightGrey = Color(0xffe9e9ef);
  static const white = Color(0xffffffff);
  static const grey = Color(0xff8c8caf);
  static const greySuit = Color(0xffbbbbd0);
  static const deepR = Color(0xffc43a32);
  static const darkR = Color(0xFF370617);

  const Colors();
}

class GradientColors {
  static const darkRedToTransparent = [
    Colors.darkRed,
    Colors.deepRed,
    Colors.red70,
    Colors.red20,
    Colors.transparent,
  ];
  static const yellowToRed = [
    Colors.yellow,
    Colors.lightOrange,
    Colors.orange,
    Colors.darkOrange,
    Colors.red,
  ];

  const GradientColors();
}

class GradientStops {
  static const darkRedToTransparent = [0.0606, 0.2072, 0.3649, 0.5011, 0.6604];
  static const yellowToRed = [0.0, 0.2865, 0.526, 0.7656, 1.0];

  const GradientStops();
}
