import 'package:dio/dio.dart';
import 'package:fedman_admin_app/presentation/account/data/models/fedman_user_model.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../../core/network/api_client.dart';
import '../../../../core/network/api_response.dart';
import '../../../../core/utils/managers/google_signin_manager.dart';

class AccountRepo {
  final ApiClient apiClient;

  AccountRepo({required this.apiClient});

  Future<ApiResponse<FedmanUserModel>> loginWithGoogle(GoogleSignInAccount googleSignInAccount) async {





    if (googleSignInAccount.authentication.idToken == null) {
      return ApiResponse.failure("idToken is null");
    }
    final requestData = {
      'provider': 'google',
      'idToken': googleSignInAccount.authentication.idToken,
    };

    // Call social login API
    final Response response = await apiClient.post(
      '/auth-service/auth/social-login',
      data: requestData,
    );

    if (response.data["status"] == "success") {
      return ApiResponse.success(
        accessToken: response.data!["data"]["access_token"],
        FedmanUserModel.fromJson(response.data!["data"]["user"]),
        message: response.data!["message"],
        statusCode: response.statusCode,
      );
    } else {
      return ApiResponse.failure(response.data["message"]);
    }
  }
}
