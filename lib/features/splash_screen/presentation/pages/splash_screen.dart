import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFFFFFF),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset('assets/splashAssets/es_logo.png')),
            Text('Elfaspace',
                style: TextStyle(
                    fontFamily: 'Merienda',
                    fontSize: 30.sp,
                    color: const Color(0xffB409CE))),
            Text('Everything available at your fingertips',
                style: TextStyle(
                    fontFamily: 'Merienda',
                    fontSize: 15.sp,
                    color: const Color(0xff000000))),
            Divider(
              color: const Color(0xffB409CE),
              thickness: 2,
              indent: 50.w,
              endIndent: 50.w,
            ),
          ],
        ));
  }
}
