import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocationButton extends StatelessWidget {
  const LocationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          height: 60.sp,
          width: 310.sp,
          decoration: BoxDecoration(
              color: const Color(0xffB409CE),
              borderRadius: BorderRadius.circular(25)),
          child: Center(
              child: Text('Ok, I Understand',
                  style: TextStyle(color: Colors.white, fontSize: 15.sp)))),
    );
  }
}
