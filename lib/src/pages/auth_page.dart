import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:front/src/pages/inscription/brand_page.dart';
import 'package:front/src/pages/sign_in_page.dart';
import 'package:front/src/services/mingler/entity/MinglerItem.dart';
import 'package:front/src/services/mingler/mingler.api.dart';

import 'home_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            if (snapshot.hasData) {
              return FutureBuilder<MinglerTag>(
                future: MinglerApi().getMinglerTag(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return const HomePage();
                  } else {
                    return const BrandPage();
                  }
                },
              );
            } else {
              return const SignInPage();
            }
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
