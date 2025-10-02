import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInManager {
  // Create a singleton instance with your Google client ID

  late final GoogleSignIn _googleSignIn = GoogleSignIn.instance;

  Future registerCallbacks({required Function(GoogleSignInAuthenticationEvent event) onAuthenticate, required Function(Object e) onError})async {


    _googleSignIn.authenticationEvents
        .listen(onAuthenticate)
        .onError(onError);
  }

  Future<GoogleSignInAccount?> signIn(
      ) async {
    print('Starting Google Sign-In process...');



    final GoogleSignInAccount? googleUser = await _googleSignIn.authenticate(
      scopeHint: ['email', 'profile', 'openid'],
    );
    if (googleUser == null) {
      return null;
    }

    // Return the data needed for your backend
    return googleUser;
  }

  Future<void> signOut() async {
    try {
      await _googleSignIn.signOut();
    } catch (e) {
      print('Google Sign-Out error: $e');
    }
  }

  // Future<bool> isSignedIn() async {
  //   try {
  //     return await _googleSignIn.isSignedIn();
  //   } catch (e) {
  //     print('Error checking sign-in status: $e');
  //     return false;
  //   }
  // }

  // GoogleSignInAccount? getCurrentUser() {
  //   try {
  //     return _googleSignIn.currentUser;
  //   } catch (e) {
  //     print('Error getting current user: $e');
  //     return null;
  //   }
  // }

  void _handleAuthenticationEvent(GoogleSignInAuthenticationEvent event) {}

  void _handleAuthenticationError(Object e) {}
}
