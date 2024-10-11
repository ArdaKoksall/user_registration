import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:user_registration/common.dart';

//firebase authentication provider

class CustomAuthProvider  with ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserCredential?> signInWithEmailAndPassword(
      String email, String password, BuildContext context) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      User? user = userCredential.user;

      notifyListeners();
      return userCredential;

    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        show(context, "user not found");
      } else if (e.code == 'wrong-password') {
        show(context, "wrong-password");
      }
      return null;
    }
  }

  Future<bool> createUserWithEmailAndPassword(
      String email, String password, BuildContext context) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      show(context, "Account created successfully!");
      return true;

    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        show(context, "weak-password");
        return false;

      } else if (e.code == 'email-already-in-use') {
        show(context, "email-already-in-use");
        return false;
      }
    } catch (e) {
      return false;
    }
    return false;
  }
}