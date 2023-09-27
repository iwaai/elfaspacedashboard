import 'dart:async';

import 'package:elfa_main_dashboard/features/enableLoction_screen/presentation/pages/enable_location_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../presentation/provider/splashScreenAnimator.dart';

class Utils {
  void splashService(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Provider.of<SplashScreenAnimator>(context, listen: false)
          .triggerAnimation();

      Timer(const Duration(milliseconds: 400), () {
        Navigator.pushNamed(context, enableLocationScreen.routeName);
      });
    });
  }
}
