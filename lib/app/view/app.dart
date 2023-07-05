import 'package:authentication_repository/authentication_repository.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:front/app/bloc/app_bloc.dart';

import '../routes/routes.dart';

class MotorMingleApp extends StatelessWidget {
  const MotorMingleApp({
    Key? key,
    required this.authenticationRepository,
  }) : super(key: key);

  final AuthenticationRepository authenticationRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: authenticationRepository,
      child: BlocProvider(
        create: (_) => AppBloc(
          authenticationRepository: authenticationRepository,
        ),
        child: const AppView(),
      ),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Authentication',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFFEEFC07),
          secondary: Color(0xFFFBFC00),
          background: Colors.black,
          surface: Colors.black,
          brightness: Brightness.dark,
          error: Colors.red,
          onPrimary: Colors.black87,
          onSecondary: Colors.black87,
          onBackground: Colors.black87,
          onSurface: Colors.white,
          onError: Colors.white,
        ),
      ),
      home: FlowBuilder<AppStatus>(
        state: context.select((AppBloc bloc) => bloc.state.status),
        onGeneratePages: onGenerateAppViewPages,
      ),
    );
  }
}
