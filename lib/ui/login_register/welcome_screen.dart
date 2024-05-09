import 'package:fitness_ui_ticket/constants/dimentions/color_palette.dart';
import 'package:fitness_ui_ticket/constants/helper/asset_helper.dart';
import 'package:fitness_ui_ticket/ui/dashboard/home_screen.dart';
import 'package:fitness_ui_ticket/widget/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  static String routeName = 'welcome_screen';

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPalette.white,
      ),
      backgroundColor: ColorPalette.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50.w),
            Image.asset(AssetHelper.welcome),
            SizedBox(height: 20.w),
            Text('Welcome, Stefani',
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'MyfontBold')),
            SizedBox(height: 10.w),
            Text(
              'You are all set now, let’s reach your \ngoals together with us',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 12.sp,
                  fontFamily: 'Myfont',
                  fontWeight: FontWeight.w400,
                  color: ColorPalette.gray1),
            ),
            Spacer(),
            SizedBox(
                width: 300.w,
                child: ButtonWidget(
                  title: 'Go to home',
                  onTap: () {Navigator.of(context).pushNamed(HomeScreen.routeName);},
                ))
          ],
        ),
      ),
    );
  }
}
