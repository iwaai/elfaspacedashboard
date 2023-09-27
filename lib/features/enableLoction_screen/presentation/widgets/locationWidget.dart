import 'package:elfa_main_dashboard/features/carsouelSlide/presentation/pages/carsouelSlide.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:permission_handler/permission_handler.dart';

class LocationButton extends StatelessWidget {
  const LocationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await checkPermission(context);
      },
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

Future<void> checkPermission(BuildContext context) async {
  final status = await Permission.location.request();
  if (status.isGranted) {
    Navigator.pushNamed(context, CarsouelSlide.routeName);
  }
}
