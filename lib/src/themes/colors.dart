import 'package:flutter/material.dart';

@immutable
class AppColors {
  Colors get colors => const Colors();

  GradientColors get gradientColors => const GradientColors();

  GradientStops get gradientStops => const GradientStops();

  const AppColors();
}

class Colors {
  static const yellow = Color(0xfff1c864);
  static const lightOrange = Color(0xffeb9a3f);
  static const orange = Color(0xffe2793f);
  static const darkOrange = Color(0xffe5514c);
  static const red = Color(0xffda2f24);
  static const transparent = Color(0x00000000);
  static const red20 = Color(0x05c43a32);
  static const red70 = Color(0x20c43a32);
  static const deepRed = Color(0x508d1c24);
  static const darkRed = Color(0x90320a17);
  static const lightGrey = Color(0xffe9e9ef);
  static const grey = Color(0xff8c8cac);

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
  static const darkRedToTransparent = [0.0, 0.2, 0.5, 0.8, 1.0];
  static const yellowToRed = [0.0, 0.2, 0.5, 0.8, 1.0];

  const GradientStops();
}
