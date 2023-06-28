import 'package:flutter/material.dart';
import 'package:front/src/models/buttons/match_button_builder.dart';
import 'package:front/src/themes/colors.dart' as colors;

import 'model_page.dart';

class BrandPage extends StatelessWidget {
  const BrandPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Brand Page'),
          ],
        ),
        MatchButtonBuilder('assets/icons/peace.svg', colors.Colors.white, () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ModelPage(),
            ),
          );
        }).build(context)
      ],
    ));
  }
}
