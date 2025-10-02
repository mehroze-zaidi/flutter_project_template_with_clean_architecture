import 'package:dio/dio.dart';
import 'package:fedman_admin_app/core/utils/snackbar_utils.dart';
import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';

import 'logger_service.dart';




class ErrorHandler {
  const ErrorHandler();

  static String handleError(dynamic error, {StackTrace? stack}) {
    final message = handleErrorMessage(error);

    debugPrint(message);

    SnackbarUtils.showErrorToast(message );

    return message;
  }

  static String handleErrorMessage([dynamic e]) {
    final LoggerService logger = GetIt.I.get<LoggerService>();
    logger.e(e.toString());
    String message = 'Unknown error occurred';
    try {
      if (e is MessageException) {
        message = e.message;
      } else if (e is DioException && e.type != DioExceptionType.cancel && e.type != DioExceptionType.unknown) {
        if (e.type == DioExceptionType.badResponse) {
          if ((e.response!.data as Map)['error'] is String) {
            message = (e.response!.data as Map)['error'].toString();
          } else {
            message = (e.response!.data as Map)['error'].values.first.first.toString();
          }
        } else {
          if (e.type == DioExceptionType.receiveTimeout ||
              e.type == DioExceptionType.connectionTimeout ||
              e.type == DioExceptionType.sendTimeout) {
            message = 'Timeout error';
          } else {
            message = 'Internal Server error';
          }
        }
      }
    } catch (e) {
      message = 'Internal Server error';
    }
    return message;
  }
}

class MessageException extends Error {
  final String message;

  MessageException(this.message);
}
