import 'package:flutter/material.dart';
import 'package:front/src/themes/app_theme.dart';
import 'package:front/src/ui/gradient_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MotorMingle',
      theme: ThemeData.dark(),
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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: AppTheme.constants.buttonSize.width,
              height: AppTheme.constants.buttonSize.height,
              decoration: BoxDecoration(
                gradient: GradientBuilder(
                        AppTheme.colors.gradientColors.yellowToRed,
                        AppTheme.colors.gradientStops.yellowToRed)
                    .center(AppTheme.constants.gradientAlignments.center)
                    .radius(AppTheme.constants.gradientRadius.global)
                    .buildRadial(),
                borderRadius: BorderRadius.circular(
                    AppTheme.constants.borderRadius.global),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: GradientBuilder(
                          AppTheme.colors.gradientColors.darkRedToTransparent,
                          AppTheme.colors.gradientStops.darkRedToTransparent)
                      .begin(AppTheme.constants.gradientAlignments.begin)
                      .end(AppTheme.constants.gradientAlignments.end)
                      .buildLinear(),
                  borderRadius: BorderRadius.circular(
                      AppTheme.constants.borderRadius.global),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
