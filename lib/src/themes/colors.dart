import 'package:flutter/material.dart';

@immutable
class AppColors {
  final GradientColors gradientColors = GradientColors();
  final GradientStops gradientStops = GradientStops();

  AppColors();
}

class Colors {
  final yellow = const Color(0xfff1c864);
  final lightOrange = const Color(0xffeb9a3f);
  final orange = const Color(0xffe2793f);
  final darkOrange = const Color(0xffe5514c);
  final red = const Color(0xffda2f24);
  final transparent = const Color(0x00000000);
  final red20 = const Color(0x05c43a32);
  final red70 = const Color(0x20c43a32);
  final deepRed = const Color(0x508d1c24);
  final darkRed = const Color(0x90320a17);

  const Colors();
}

class GradientColors {
  final darkRedToTransparent = [
    const Colors().darkRed,
    const Colors().deepRed,
    const Colors().red70,
    const Colors().red20,
    const Colors().transparent,
  ];
  final yellowToRed = [
    const Colors().yellow,
    const Colors().lightOrange,
    const Colors().orange,
    const Colors().darkOrange,
    const Colors().red,
  ];
}

class GradientStops {
  final darkRedToTransparent = [0.0, 0.2, 0.5, 0.8, 1.0];
  final yellowToRed = [0.0, 0.2, 0.5, 0.8, 1.0];
}
