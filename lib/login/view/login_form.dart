import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:formz/formz.dart';

import '../../theme/theme.dart';
import '../cubit/login_cubit.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state.status.isFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(state.errorMessage ?? 'Authentication Failure'),
              ),
            );
        }
      },
      child: Align(
        alignment: const Alignment(0, -1 / 3),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 8),
              _GoogleLoginButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class _GoogleLoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context).extension<AppTheme>()!;
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        foregroundColor: appTheme.backgroundSecondaryColor,
        backgroundColor: appTheme.primaryColor,
      ),
      key: const Key('loginForm_googleLogin_raisedButton'),
      label: Text(
        AppLocalizations.of(context)!.loginWithGoogle,
      ),
      icon: SvgPicture.asset(
        'assets/icons/google.svg',
        width: 8,
        height: 8,
      ),
      onPressed: () => context.read<LoginCubit>().logInWithGoogle(),
    );
  }
}
