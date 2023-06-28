import 'package:flutter/material.dart';
import 'package:front/src/themes/colors.dart' as colors;
import 'package:front/src/themes/constants.dart' as constants;

import '../models/buttons/match_button_builder.dart';
import '../services/auth_service.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MatchButtonBuilder('assets/icons/google.svg',
                colors.Colors.white, () => AuthService().signInWithGoogle())
            .gradients(constants.Gradient.primary)
            .build(context),
      ),
    );
  }
}
