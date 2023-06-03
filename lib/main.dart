import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:front/src/models/button_builder.dart';
import 'package:front/src/models/tag_builder.dart';
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
                  SvgPicture.asset(
                    'assets/icons/close.svg',
                    colorFilter: const ColorFilter.mode(
                      colors.Colors.grey,
                      BlendMode.srcIn,
                    ),
                    width: constants.ButtonSize.width / 2,
                    height: constants.ButtonSize.width / 2,
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
                  SvgPicture.asset(
                    'assets/icons/peace.svg',
                    colorFilter: const ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    ),
                    width: constants.ButtonSize.width / 2,
                    height: constants.ButtonSize.width / 2,
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
            ),
            TagBuilder(
              const Text('5',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  )),
            )
                .gradients([
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
                ])
                .width(20.0)
                .height(20.0)
                .borderRadius(8.0)
                .build(context),
            const SizedBox(
              height: constants.SizedBoxSize.globalWidth,
            ),
            TagBuilder(
              const Text('Jeux de société',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                  )),
            )
                .paddingX(10.0)
                .paddingY(6.0)
                .borderRadius(10.0)
                .color(colors.Colors.deepR)
                .build(context),
            const SizedBox(
              height: constants.SizedBoxSize.globalWidth,
            ),
            TagBuilder(
              const Text('Suzuki GSF 650 S',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                  )),
            )
                .paddingX(10.0)
                .paddingY(6.0)
                .borderRadius(10.0)
                .color(colors.Colors.orange)
                .build(context),
            ButtonBuilder(
              () => logger.i('Modifier le profil'),
              120.0,
              25.0,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/edit.svg',
                    colorFilter: const ColorFilter.mode(
                      colors.Colors.darkR,
                      BlendMode.srcIn,
                    ),
                    width: 12.0,
                    height: 12.0,
                  ),
                  const SizedBox(
                    width: 3.0,
                  ),
                  const Text(
                    'Modifier le profil',
                    style: TextStyle(
                      color: colors.Colors.darkR,
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
              borderRadius: constants.BorderRadius.global,
            ).color(colors.Colors.lightGrey).build(context),
          ],
        ),
      ),
    );
  }
}
