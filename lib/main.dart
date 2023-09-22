import 'package:elfa_main_dashboard/features/carsouelSlide/presentation/provider/dotChanger.dart';
import 'package:flutter/material.dart';
import './features/splash_screen/presentation/pages/splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'features/enableLoction_screen/presentation/pages/enable_location_screen.dart';
import 'features/carsouelSlide/presentation/pages/carsouelSlide.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (context, child) {
      return MultiProvider(
        providers: [ChangeNotifierProvider(create: (_) => DotChanger())],
        child: MaterialApp(
          title: 'eflaspace',
          theme: ThemeData(
              primarySwatch: Colors.blue, brightness: Brightness.light),
          home: const CarsouelSlide(),
        ),
      );
    });
  }
}
