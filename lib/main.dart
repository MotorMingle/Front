import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:front/src/pages/auth_page.dart';
import 'package:front/src/themes/app_theme.dart';
import 'package:logger/logger.dart';

import 'firebase_options.dart';

var logger = Logger();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.define(),
      home: const AuthPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
