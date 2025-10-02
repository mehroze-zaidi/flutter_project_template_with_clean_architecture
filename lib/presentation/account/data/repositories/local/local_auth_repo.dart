import 'package:shared_preferences/shared_preferences.dart';

class LocalAuthRepository {
  static const String _userIdKey = 'user_id';
  static const String _accessTokenKey = 'access_token';
  static const String _isLoggedInKey = 'is_logged_in';
  static const String _isFirstTimeKey = 'is_first_time';

  final SharedPreferences _prefs;

  LocalAuthRepository(this._prefs);

  // Save user authentication data
  Future<void> saveUserAuthData({
    required String userId,
    required String accessToken,
  }) async {
    await Future.wait([
      _prefs.setString(_userIdKey, userId),
      _prefs.setString(_accessTokenKey, accessToken),
      _prefs.setBool(_isLoggedInKey, true),
    ]);
  }

  // Get user ID
  String? getUserId() {
    return _prefs.getString(_userIdKey);
  }

  // Get access token
  String? getAccessToken() {
    return _prefs.getString(_accessTokenKey);
  }

  // Check if user is logged in
  bool isLoggedIn() {
    return _prefs.getBool(_isLoggedInKey) ?? false;
  }

  // Clear all authentication data
  Future<void> clearAuthData() async {
    await Future.wait([
      _prefs.remove(_userIdKey),
      _prefs.remove(_accessTokenKey),
      _prefs.remove(_isLoggedInKey),
    ]);
  }

  // Update access token
  Future<void> updateAccessToken(String accessToken) async {
    await _prefs.setString(_accessTokenKey, accessToken);
  }

  // Check if this is the first time the app is launched
  bool isFirstTimeLaunch() {
    return _prefs.getBool(_isFirstTimeKey) ?? true;
  }

  // Mark that the app has been launched before
  Future<void> setFirstTimeLaunchComplete() async {
    await _prefs.setBool(_isFirstTimeKey, false);
  }
}
