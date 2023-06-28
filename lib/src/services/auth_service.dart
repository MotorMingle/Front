import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  // Google Sign In
  Future<UserCredential> signInWithGoogle() async {
    // Begin interactive sign-in process
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain auth details from the request
    final GoogleSignInAuthentication googleAuth =
        await googleUser!.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    // Lets sign in the user
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
