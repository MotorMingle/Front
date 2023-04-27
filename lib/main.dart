import 'package:flutter/material.dart';
import 'package:front/src/models/button_builder.dart';
import 'package:front/src/themes/app_theme.dart';
import 'package:front/src/themes/colors.dart' as colors;
import 'package:front/src/themes/constants.dart' as constants;
import 'package:front/src/ui/gradient_builder.dart';
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
                ButtonBuilder(
                  () => logger.i('No'),
                  constants.ButtonSize.width,
                  constants.ButtonSize.height,
                  const Icon(
                    Icons.close,
                    color: colors.Colors.grey,
                    size: constants.ButtonSize.width / 2,
                  ),
                  borderRadius: constants.BorderRadius.global,
                ).color(colors.Colors.lightGrey).build(context),
                const SizedBox(
                  width: constants.SizedBoxSize.globalWidth,
                ),
                ButtonBuilder(
                  () => logger.i('Yes'),
                  constants.ButtonSize.width,
                  constants.ButtonSize.height,
                  const Icon(
                    Icons.waving_hand_outlined,
                    size: constants.ButtonSize.width / 2,
                    color: Colors.white,
                  ),
                  borderRadius: constants.BorderRadius.global,
                ).gradients([
                  GradientBuilder(colors.GradientColors.yellowToRed,
                          colors.GradientStops.yellowToRed)
                      .center(constants.GradientAlignments.center)
                      .radius(constants.GradientRadius.global)
                      .buildRadial(),
                  GradientBuilder(colors.GradientColors.darkRedToTransparent,
                          colors.GradientStops.darkRedToTransparent)
                      .begin(constants.GradientAlignments.begin)
                      .end(constants.GradientAlignments.end)
                      .buildLinear(),
                ]).build(context),
              ],
            )
          ],
        ),
      ),
    );
  }
}
