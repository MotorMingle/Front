import 'package:flutter/material.dart';
import 'package:front/src/pages/inscription/personnal_page.dart';
import 'package:front/src/themes/colors.dart' as colors;

import '../../models/buttons/match_button_builder.dart';

class ImmatriculationPage extends StatelessWidget {
  const ImmatriculationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Immatriculation Page'),
          ],
        ),
        MatchButtonBuilder('assets/icons/peace.svg', colors.Colors.white, () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PersonnalPage(),
            ),
          );
        }).build(context)
      ],
    ));
  }
}
