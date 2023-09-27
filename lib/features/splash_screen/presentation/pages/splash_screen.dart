import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../provider/splashScreenAnimator.dart';
import '../../domain/utilities/utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Utils utitlities = Utils();
  @override
  void initState() {
    utitlities.splashService(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFFFFFF),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Positioned(
                top: 280.h,
                left: 125.w,
                child: AnimatedContainer(
                  decoration: BoxDecoration(
                      borderRadius:
                          Provider.of<SplashScreenAnimator>(context).isExpanded
                              ? BorderRadius.circular(0)
                              : BorderRadius.circular(95),
                      color: const Color(0xffB409CE)),
                  duration: const Duration(seconds: 1), // Animation duration
                  curve: Curves.easeInOut, // Animation curve
                  width: Provider.of<SplashScreenAnimator>(context).isExpanded
                      ? MediaQuery.of(context).size.width
                      : 95.h,
                  height: Provider.of<SplashScreenAnimator>(context).isExpanded
                      ? MediaQuery.of(context).size.height
                      : 95.w,
                  alignment:
                      Provider.of<SplashScreenAnimator>(context).isExpanded
                          ? Alignment.center
                          : Alignment.centerLeft,
                ),
              ),

              // SizedBox(
              //   height: 220.h,
              // ),
              Positioned(
                top: 280.h,
                left: 125.w,
                child: SizedBox(
                  child: Image.asset(
                    'assets/splashAssets/es_logo.png',
                    height: 95.w,
                    width: 95.h,
                  ),
                ),
              ),

              Provider.of<SplashScreenAnimator>(context).isExpanded
                  ? SizedBox()
                  : Positioned(
                      top: 370.h,
                      left: 105.w,
                      child: Text('Elfaspace',
                          style: TextStyle(
                              fontFamily: 'Merienda',
                              fontSize: 30.sp,
                              color: const Color(0xffB409CE))),
                    ),
              Provider.of<SplashScreenAnimator>(context).isExpanded
                  ? SizedBox()
                  : Positioned(
                      top: 410.h,
                      left: 35.w,
                      child: Text('Everything available at your fingertips',
                          style: TextStyle(
                              fontFamily: 'Merienda',
                              fontSize: 15.sp,
                              color: const Color(0xff000000))),
                    ),
              Provider.of<SplashScreenAnimator>(context).isExpanded
                  ? SizedBox()
                  : Positioned(
                      top: 410.h,
                      left: 35.w,
                      child: Divider(
                        color: const Color(0xffB409CE),
                        thickness: 2,
                        indent: 50.w,
                        endIndent: 50.w,
                      ),
                    ),
            ],
          ),
        ));
  }
}
