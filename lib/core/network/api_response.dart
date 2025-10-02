class ApiResponse<T> {
  final T? data;
  final String? message;
  final String? accessToken;
  final bool success;
  final int? statusCode;

  ApiResponse({
    this.data,
    this.message,
    required this.success,
    this.statusCode,
    this.accessToken
  });

  factory ApiResponse.success(T data, {String? message, int? statusCode,String? accessToken}) {
    return ApiResponse(
      data: data,
      message: message,
      success: true,
      statusCode: statusCode,
      accessToken: accessToken
    );
  }

  factory ApiResponse.failure(String message, {int? statusCode}) {
    return ApiResponse(
      message: message,
      success: false,
      statusCode: statusCode,
    );
  }
}
