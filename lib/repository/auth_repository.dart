import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';

final authRepositoryProvider = Provider(
  (ref) => AuthRepository(
    googleSignIn: GoogleSignIn(),
  ),
);

class AuthRepository {
  final GoogleSignIn _googleSignIn;

  AuthRepository({required GoogleSignIn googleSignIn})
      : _googleSignIn = googleSignIn;

  void signInWithGoogle() async {
    try {
      final user = await _googleSignIn.signIn();

      if (user != null) {
        final token = await user.authentication;
        print("token: ${token.idToken}");
        // print(user.email);
        // print(user.id);
      } else {
        print("No user");
      }
    } catch (e) {
      print(e);
    }
  }
}
