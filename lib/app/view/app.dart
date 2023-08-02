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
    required this.theme,
  }) : super(key: key);

  final AuthenticationRepository authenticationRepository;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: authenticationRepository,
      child: BlocProvider(
        create: (_) => AppBloc(
          authenticationRepository: authenticationRepository,
        ),
        child: AppView(
          theme: theme,
        ),
      ),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({Key? key, required this.theme}) : super(key: key);
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Authentication',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: theme,
      home: FlowBuilder<AppStatus>(
        state: context.select((AppBloc bloc) => bloc.state.status),
        onGeneratePages: onGenerateAppViewPages,
      ),
    );
  }
}
