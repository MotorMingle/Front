import 'package:flutter/material.dart';
import 'package:front/src/pages/inscription/preference_page.dart';
import 'package:front/src/themes/colors.dart' as colors;

import '../../models/buttons/match_button_builder.dart';

class PersonnalPage extends StatelessWidget {
  const PersonnalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Personnal Page'),
          ],
        ),
        MatchButtonBuilder('assets/icons/peace.svg', colors.Colors.white, () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PreferencePage(),
            ),
          );
        }).build(context)
      ],
    ));
  }
}
