import 'package:flutter/material.dart';
import 'package:front/src/models/buttons/action_button_builder.dart';
import 'package:front/src/models/buttons/chip_button_builder.dart';
import 'package:front/src/models/buttons/match_button_builder.dart';
import 'package:front/src/models/iconText/icon_text_builder.dart';
import 'package:front/src/models/tag/label_tag_builder.dart';
import 'package:front/src/models/tag/status_tag_builder.dart';
import 'package:front/src/themes/app_theme.dart';
import 'package:front/src/themes/colors.dart' as colors;
import 'package:front/src/themes/constants.dart' as constants;
import 'package:logger/logger.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MotorMingle',
      theme: AppTheme.define(),
      home: const MyHomePage(title: 'MotorMingle Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var logger = Logger();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MatchButtonBuilder('assets/icons/close.svg', colors.Colors.grey,
                    () => logger.i('Close button pressed')).build(context),
                const SizedBox(
                  width: 20,
                ),
                MatchButtonBuilder(
                  'assets/icons/peace.svg',
                  colors.Colors.white,
                  () => logger.i('Peace button pressed'),
                ).gradients(constants.Gradient.primary).build(context),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ActionButtonBuilder(
                  'assets/icons/edit.svg',
                  'Modifier mon profil',
                  colors.Colors.darkR,
                  () => logger.i('Edit button pressed'),
                ).build(context),
                const SizedBox(
                  width: 20,
                ),
                ChipButtonBuilder(
                  'assets/icons/close.svg',
                  colors.Colors.white,
                  () => logger.i('Plus button pressed'),
                ).gradients(constants.Gradient.primary).build(context)
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                StatusTagBuilder()
                    .gradients(constants.Gradient.primary)
                    .build(context),
                const SizedBox(
                  width: 20,
                ),
                LabelTagBuilder('Suzuki GSF 650 S').build(context),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconTextBuilder('Caen', 'assets/icons/location.svg')
                    .build(context),
                IconTextBuilder('CQ-831-WX', 'assets/icons/plate.svg')
                    .build(context),
                IconTextBuilder(
                        '+ 14% vs hier', 'assets/icons/little-arrow.svg')
                    .gradients(constants.Gradient.primary)
                    .build(context),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
