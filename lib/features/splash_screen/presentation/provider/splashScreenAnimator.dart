import 'package:flutter/material.dart';

class SplashScreenAnimator with ChangeNotifier {
  bool _isExpanded = false;
  bool get isExpanded => _isExpanded;
  void triggerAnimation() {
    _isExpanded = !_isExpanded;
    notifyListeners();
  }
}
