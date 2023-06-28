import 'package:flutter/material.dart';
import 'package:front/src/pages/home_page.dart';
import 'package:front/src/themes/colors.dart' as colors;

import '../../models/buttons/match_button_builder.dart';

class PreferencePage extends StatelessWidget {
  const PreferencePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Preference Page'),
          ],
        ),
        MatchButtonBuilder('assets/icons/peace.svg', colors.Colors.white, () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HomePage(),
            ),
          );
        }).build(context)
      ],
    ));
  }
}
