part of 'theme.dart';

@immutable
class AppColors {
  Colors get colors => const Colors();

  GradientColors get gradientColors => const GradientColors();

  GradientStops get gradientStops => const GradientStops();

  const AppColors();
}

class Colors {
  static const primaryColor = Color(0xFFFBFC00);
  static const secondaryColor = Color(0xFFEEFC07);

  static const primaryBackgroundColor = Color(0xFF10100F);
  static const secondaryBackgroundColor = Color(0xFF2A2A29);

  const Colors();
}

class GradientColors {
  static const foregroundGradient = [
    Colors.primaryColor,
    Colors.secondaryColor,
  ];

  static const backgroundGradient = [
    Colors.primaryBackgroundColor,
    Colors.secondaryBackgroundColor,
  ];

  const GradientColors();
}

class GradientStops {
  static const foregroundGradient = [0.0, 1.0];

  static const backgroundGradient = [0.0, 1.0];

  const GradientStops();
}
