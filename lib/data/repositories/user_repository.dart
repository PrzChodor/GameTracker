import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class UserRepository {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  UserRepository._(this._firebaseAuth, this._googleSignIn);

  static final UserRepository _instance =
      UserRepository._(FirebaseAuth.instance, GoogleSignIn());

  factory UserRepository() {
    return _instance;
  }

  Future<void> signInWithGoogle() async {
    final GoogleSignInAccount googleUser = (await _googleSignIn.signIn())!;

    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    await _firebaseAuth.signInWithCredential(credential);
  }

  Future<void> signInWithFacebook() async {
    final LoginResult result = await FacebookAuth.instance.login();

    if (result.status == LoginStatus.success) {
      final credential =
          FacebookAuthProvider.credential(result.accessToken!.token);

      await _firebaseAuth.signInWithCredential(credential).then((credential) =>
          !credential.user!.emailVerified
              ? credential.user!.sendEmailVerification()
              : null);
    } else {
      throw Exception(result.message);
    }
  }

  Future<void> signInWithCredentials(String email, String password) {
    return _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> signUp(
      {required String email,
      required String password,
      required String username}) async {
    await _firebaseAuth
        .createUserWithEmailAndPassword(
          email: email,
          password: password,
        )
        .then((credential) => credential.user?.sendEmailVerification())
        .then((_) => addUsername(username))
        .then((_) => signOut());
  }

  Future<void> addUsername(String username) async {
    _firebaseAuth.currentUser?.updateProfile(displayName: username);
  }

  Future<void> signOut() async {
    if (_firebaseAuth.currentUser != null)
      await Future.wait([
        _firebaseAuth.signOut(),
        _googleSignIn.signOut(),
        _firebaseAuth.signOut(),
      ]);
  }

  Future<bool> isSignedIn() async {
    final currentUser = _firebaseAuth.currentUser;
    return currentUser != null;
  }

  Future<void> deleteUser() async {
    await _firebaseAuth.currentUser?.delete();
  }

  String? getUsername() {
    return _firebaseAuth.currentUser?.displayName;
  }

  String? getEmail() {
    return _firebaseAuth.currentUser?.email;
  }

  String? getUid() {
    return _firebaseAuth.currentUser?.uid;
  }

  bool hasUsername() {
    return _firebaseAuth.currentUser?.displayName != null;
  }

  bool hasVerifiedEmail() {
    return _firebaseAuth.currentUser!.emailVerified;
  }

  Future<void> sendVerificationEmail() async {
    await _firebaseAuth.currentUser!.sendEmailVerification();
  }

  Future<void> reloadUser() async {
    await _firebaseAuth.currentUser!.reload();
  }

  Future<void> resetPassword(String email) async {
    await _firebaseAuth.sendPasswordResetEmail(email: email);
  }
}
