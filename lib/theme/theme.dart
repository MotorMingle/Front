import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';

class AppTheme extends ThemeExtension<AppTheme> {
  AppTheme({
    this.primaryColor,
    this.secondaryColor,
    this.backgroundPrimaryColor,
    this.backgroundSecondaryColor,
    this.backgroundGradientBegin,
    this.backgroundGradientEnd,
    this.textColor,
  });

  Color? primaryColor;
  Color? secondaryColor;
  Color? backgroundPrimaryColor;
  Color? backgroundSecondaryColor;
  double? backgroundGradientBegin;
  double? backgroundGradientEnd;
  Color? textColor;

  @override
  AppTheme copyWith({
    Color? primaryColor,
    Color? secondaryColor,
    Color? backgroundPrimaryColor,
    Color? backgroundSecondaryColor,
    double? backgroundGradientBegin,
    double? backgroundGradientEnd,
    Color? textColor,
  }) {
    return AppTheme(
      primaryColor: primaryColor ?? this.primaryColor,
      secondaryColor: secondaryColor ?? this.secondaryColor,
      backgroundPrimaryColor:
          backgroundPrimaryColor ?? this.backgroundPrimaryColor,
      backgroundSecondaryColor:
          backgroundSecondaryColor ?? this.backgroundSecondaryColor,
      backgroundGradientBegin:
          backgroundGradientBegin ?? this.backgroundGradientBegin,
      backgroundGradientEnd:
          backgroundGradientEnd ?? this.backgroundGradientEnd,
      textColor: textColor ?? this.textColor,
    );
  }

  @override
  AppTheme lerp(ThemeExtension<AppTheme>? other, double t) {
    if (other is! AppTheme) {
      return this;
    }
    return AppTheme(
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t),
      secondaryColor: Color.lerp(secondaryColor, other.secondaryColor, t),
      backgroundPrimaryColor:
          Color.lerp(backgroundPrimaryColor, other.backgroundPrimaryColor, t),
      backgroundSecondaryColor: Color.lerp(
          backgroundSecondaryColor, other.backgroundSecondaryColor, t),
      textColor: Color.lerp(textColor, other.textColor, t),
    );
  }

  @override
  String toString() {
    return 'AppTheme{primaryColor: $primaryColor, secondaryColor: $secondaryColor, backgroundPrimaryColor: $backgroundPrimaryColor, backgroundSecondaryColor: $backgroundSecondaryColor, backgroundGradientBegin: $backgroundGradientBegin, backgroundGradientEnd: $backgroundGradientEnd, textColor: $textColor}';
  }

  Future<AppTheme> define() async {
    final remoteConfig = FirebaseRemoteConfig.instance;
    await remoteConfig.setConfigSettings(RemoteConfigSettings(
      fetchTimeout: const Duration(minutes: 1),
      minimumFetchInterval: const Duration(seconds: 1),
    ));
    await remoteConfig.fetchAndActivate();

    return AppTheme(
      primaryColor: Color(int.parse(
        remoteConfig.getString('primary'),
      )),
      secondaryColor: Color(int.parse(
        remoteConfig.getString('secondary'),
      )),
      backgroundPrimaryColor: Color(int.parse(
        remoteConfig.getString('background_primary'),
      )),
      backgroundSecondaryColor: Color(int.parse(
        remoteConfig.getString('background_secondary'),
      )),
      backgroundGradientBegin:
          remoteConfig.getDouble('background_gradient_begin'),
      backgroundGradientEnd: remoteConfig.getDouble('background_gradient_end'),
      textColor: Color(int.parse(
        remoteConfig.getString('text'),
      )),
    );
  }
}
