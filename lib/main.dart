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
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                gradient: GradientBuilder(
                        AppTheme.colors.gradientColors.yellowToRed,
                        AppTheme.colors.gradientStops.yellowToRed)
                    .center(const Alignment(-0.4, 1.2))
                    .radius(1.2)
                    .buildRadial(),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: GradientBuilder(
                          AppTheme.colors.gradientColors.darkRedToTransparent,
                          AppTheme.colors.gradientStops.darkRedToTransparent)
                      .begin(const Alignment(-0.7, -1))
                      .end(const Alignment(0, 0.5))
                      .buildLinear(),
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
