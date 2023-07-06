import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../theme/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static Page page() => const MaterialPage<void>(child: HomePage());

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context).extension<AppTheme>()!;
    return Scaffold(
      backgroundColor: appTheme.secondaryColor,
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                appTheme.backgroundPrimaryColor!,
                appTheme.backgroundSecondaryColor!
              ],
              stops: [
                appTheme.backgroundGradientBegin!,
                appTheme.backgroundGradientEnd!
              ],
            ),
          ),
          child: Center(
              child: Text(AppLocalizations.of(context)!.hi,
                  style: TextStyle(color: appTheme.textColor)))),
    );
  }
}
