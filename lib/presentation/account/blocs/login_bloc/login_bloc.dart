import 'package:bloc/bloc.dart';
import 'package:fedman_admin_app/core/utils/error_handler.dart';
import 'package:fedman_admin_app/core/utils/logger_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../data/models/fedman_user_model.dart';
import '../../data/repositories/account_repo.dart';
import '../../data/repositories/local/local_auth_repo.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AccountRepo accountRepo;

  LoginBloc({required this.accountRepo}) : super(LoginInitial()) {
    on<GoogleLoginRequested>(_onGoogleLoginRequested);
  }

  Future<void> _onGoogleLoginRequested(
    GoogleLoginRequested event,
    Emitter<LoginState> emit,
  ) async {
    try {
      emit(LoginLoading());

      final result = await accountRepo.loginWithGoogle(
        event.googleSignInAccount,
      );

      if (result.success && result.data != null) {
        final localAuthRepository = GetIt.I.get<LocalAuthRepository>();

        if (result.accessToken != null) {
          await localAuthRepository.saveUserAuthData(
            userId: result.data!.userId!,
            accessToken: result.accessToken!,
          );

          if (localAuthRepository.isFirstTimeLaunch()) {
            await localAuthRepository.setFirstTimeLaunchComplete();
          }
        } else {
          emit(LoginError(message: 'AccessToken is null'));
        }

        emit(
          LoginSuccess(
            userData: result.data!,
            message: result.message ?? 'Login successful',
          ),
        );
      } else {
        debugPrint(result.message);
        emit(LoginError(message: result.message ?? 'Login failed'));
      }
    } catch (e) {
      final error = ErrorHandler.handleError(e);
      GetIt.I.get<LoggerService>().e(error);
      emit(LoginError(message: 'Google login failed: $error'));
    }
  }
}
