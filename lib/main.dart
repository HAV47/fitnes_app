import 'package:fitness_ui_ticket/constants/dimentions/color_palette.dart';
import 'package:fitness_ui_ticket/routes.dart';
import 'package:fitness_ui_ticket/ui/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          theme: ThemeData(
              primaryColor: ColorPalette.primaryBlue,
              scaffoldBackgroundColor: ColorPalette.backgroundScaffoldColor,
              colorScheme: ColorScheme.fromSeed(
                  seedColor: ColorPalette.backgroundScaffoldColor)),
          routes: routes,
          home: SplashScreen(),
        );
      },
    );
  }
}






