import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/locationWidget.dart';

class enableLocationScreen extends StatelessWidget {
  const enableLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text('Enable Location',
            style: TextStyle(
                fontFamily: 'Monsterrat-Medium',
                fontWeight: FontWeight.bold,
                fontSize: 26.sp,
                color: const Color(0xff000000))),
        Text(
            'ElfaSpace receives your location when you are \nusing the app to search for nearby businesses, \ngives you a better local experience, and more.',
            style: TextStyle(
                fontFamily: 'Monsterrat-Light',
                fontSize: 14.sp,
                color: const Color(0xff000000))),
        Image.asset('assets/splashAssets/location_1.png'),
        const LocationButton(),
        SizedBox(
          height: 40.h,
        ),
        Text('You can adjust your location setting at any time',
            style: TextStyle(
                fontFamily: 'Monsterrat-Light',
                fontSize: 10.sp,
                color: const Color(0xff000000))),
        Text('Learn More',
            style: TextStyle(
                fontFamily: 'Monsterrat-Light',
                fontSize: 10.sp,
                color: const Color(0xff3490DE)))
      ]),
    );
  }
}
