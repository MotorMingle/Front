import 'package:authentication_repository/authentication_repository.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:front/theme/theme.dart';

import 'app/app.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = const AppBlocObserver();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  WidgetsFlutterBinding.ensureInitialized();

  final authenticationRepository = AuthenticationRepository();
  await authenticationRepository.user.first;

  await AppTheme().define().then((appTheme) => {
        runApp(MotorMingleApp(
          authenticationRepository: authenticationRepository,
          theme: ThemeData.dark().copyWith(
            extensions: <ThemeExtension<dynamic>>[
              appTheme,
            ],
          ),
        ))
      });
}
