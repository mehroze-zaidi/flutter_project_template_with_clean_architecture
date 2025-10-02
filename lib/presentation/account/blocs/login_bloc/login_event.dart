part of 'login_bloc.dart';

@immutable
sealed class LoginEvent {}

class GoogleLoginRequested extends LoginEvent {
  final GoogleSignInAccount googleSignInAccount;
  GoogleLoginRequested(this.googleSignInAccount);
}
