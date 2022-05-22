import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  get _firebaseAuth => _firebaseAuth.instance;

  User? get currentUser => _firebaseAuth.currentUser;

  Future<User?> signInAnonymously() async {
    final userCredential = await _firebaseAuth.signInAnonymously();
    return userCredential.user;
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
