import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginInButton extends StatelessWidget {
  final Color color;
  final String text;
  const LoginInButton({
    super.key,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          height: 60.sp,
          width: 110.sp,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(15)),
          child: Center(
              child: Text(text,
                  style: TextStyle(color: Colors.white, fontSize: 15.sp)))),
    );
  }
}
