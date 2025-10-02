part of 'login_bloc.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}

final class LoginLoading extends LoginState {}

final class LoginSuccess extends LoginState {
  final FedmanUserModel userData;
  final String message;

   LoginSuccess({
    required this.userData,
    required this.message,
  });
}

final class LoginError extends LoginState {
  final String message;

   LoginError({required this.message});
}
