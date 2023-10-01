// packages
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import 'package:elfa_main_dashboard/features/splash_screen/domain/utilities/utils.dart';
import '../../homeScreen/homeScreen.dart';
import '../presentation/provider/circleIndicatorProvider.dart';

class authenticationMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> SignIn({
    required String email,
    required String password,
    required BuildContext ctx,
  }) async {
    Provider.of<CircleIndicatorProvider>(ctx, listen: false)
        .switchCircleIndicator();
    _auth
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) {
      Navigator.push(
          ctx, MaterialPageRoute(builder: (context) => const HomeScreen()));
      Provider.of<CircleIndicatorProvider>(ctx, listen: false)
          .switchCircleIndicator();
    }).onError((error, stackTrace) {
      Utils().showMsg(error.toString());
      Provider.of<CircleIndicatorProvider>(ctx, listen: false)
          .switchCircleIndicator();
    });
  }

  Future<void> signUP({
    required String email,
    required String password,
    required BuildContext ctx,
    required String phone,
  }) async {
    _auth
        .createUserWithEmailAndPassword(
            email: email.toString(), password: password.toString())
        .then((value) => Navigator.push(
            ctx, MaterialPageRoute(builder: (context) => const HomeScreen())));
  }
}
