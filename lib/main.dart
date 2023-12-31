import 'package:elfa_main_dashboard/features/carsouelSlide/presentation/provider/dotChanger.dart';
import 'package:elfa_main_dashboard/features/splash_screen/presentation/provider/splashScreenAnimator.dart';
import 'package:elfa_main_dashboard/features/work_spaces/presentation/pages/work_space.dart';
import 'package:flutter/material.dart';
import './features/splash_screen/presentation/pages/splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'features/carsouelSlide/presentation/provider/circleIndicatorProvider.dart';
import 'features/enableLoction_screen/presentation/pages/enable_location_screen.dart';
import 'features/carsouelSlide/presentation/pages/carsouelSlide.dart';
import 'package:firebase_core/firebase_core.dart';
import './features/carsouelSlide/presentation/provider/errorProvider.dart';
// import './features/homeScreen/homeScreen.dart';
// import './features/work_spaces/presentation/pages/work_space.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (context, child) {
      return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => CircleIndicatorProvider()),
          ChangeNotifierProvider(create: (_) => errorProvider()),
          ChangeNotifierProvider(create: (_) => DotChanger()),
          ChangeNotifierProvider(create: (_) => SplashScreenAnimator())
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'eflaspace',
          theme: ThemeData(
              primarySwatch: Colors.blue, brightness: Brightness.light),
          home: SplashScreen(),
          routes: {
            enableLocationScreen.routeName: (ctx) =>
                const enableLocationScreen(),
            CarsouelSlide.routeName: (ctx) => const CarsouelSlide(),
            WorkSpace.routeName: (ctx) => WorkSpace(),
          },
        ),
      );
    });
  }
}
