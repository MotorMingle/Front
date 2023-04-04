import 'package:flutter/material.dart';

class AppLocale extends ChangeNotifier {
  late Locale _locale;

  Locale get locale => _locale;

  void changeLocale(Locale newLocale) {
    if(newLocale == const Locale('fr')) {
      _locale = const Locale('fr');
    } else {
      _locale = const Locale('en');
    }
    notifyListeners();
  }
}