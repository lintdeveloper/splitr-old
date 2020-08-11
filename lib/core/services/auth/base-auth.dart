import 'package:firebase_auth/firebase_auth.dart';

abstract class BaseAuth {
  Future<String>  signInWithGoogle();

  Future<void> signOutWithGoogle();

  Future<FirebaseUser> getCurrentUser();

}