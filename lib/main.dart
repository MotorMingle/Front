import 'package:flutter/material.dart';
import 'package:front/src/models/buttons/match_button_builder.dart';
import 'package:front/src/models/iconText/icon_text_builder.dart';
import 'package:front/src/models/tag/label_tag_builder.dart';
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // const SizedBox(
            //   height: 20,
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     ActionButtonBuilder(
            //       'assets/icons/edit.svg',
            //       'Modifier mon profil',
            //       colors.Colors.darkR,
            //       () => logger.i('Edit button pressed'),
            //     ).build(context),
            //     const SizedBox(
            //       width: 20,
            //     ),
            //     ChipButtonBuilder(
            //       'assets/icons/close.svg',
            //       colors.Colors.white,
            //       () => logger.i('Plus button pressed'),
            //     ).gradients(constants.Gradient.primary).build(context)
            //   ],
            // ),
            // const SizedBox(
            //   height: 20,
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     StatusTagBuilder()
            //         .gradients(constants.Gradient.primary)
            //         .build(context),
            //     const SizedBox(
            //       width: 20,
            //     ),
            //     LabelTagBuilder('Suzuki GSF 650 S').build(context),
            //   ],
            // ),
            // const SizedBox(
            //   height: 20,
            // ),
            Container(
              width: 322.0,
              height: 482.0,
              padding: const EdgeInsetsDirectional.fromSTEB(46, 345, 46, 32),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                image: const DecorationImage(
                  image: AssetImage('assets/images/user_photo.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: colors.Colors.grey.withOpacity(0.25),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Valentin Lebarbanchon',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                        color: colors.Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    LabelTagBuilder('Suzuki GSF 650 S').build(context),
                    const SizedBox(
                      height: 10,
                    ),
                    IconTextBuilder('Caen', 'assets/icons/location.svg')
                        .textColor(colors.Colors.white)
                        .iconColor(colors.Colors.white)
                        .build(context),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
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
          ],
        ),
      ),
    );
  }
}
