part of 'login_cubit.dart';

final class LoginState extends Equatable {
  const LoginState(
      {this.email = const Email.pure(),
      this.status = FormzSubmissionStatus.initial,
      this.errorMessage});

  final Email email;

  final FormzSubmissionStatus status;

  final String? errorMessage;

  @override
  List<Object?> get props => [email, status, errorMessage];

  LoginState copyWith(
      {Email? email, FormzSubmissionStatus? status, String? errorMessage}) {
    return LoginState(
      email: email ?? this.email,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
