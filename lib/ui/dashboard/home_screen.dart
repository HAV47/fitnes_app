import 'package:fitness_ui_ticket/constants/dimentions/color_palette.dart';
import 'package:fitness_ui_ticket/constants/helper/asset_helper.dart';
import 'package:fitness_ui_ticket/widget/appbar_dashboard_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static String routeName = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.white,
      appBar: AppBar(
        backgroundColor: ColorPalette.white,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 30.w),
            child: Icon(Icons.notifications_none_outlined),
          )
        ],
        title: Padding(
          padding: EdgeInsets.all(10.w),
          child: Column(
            children: [
              RichText(
                text: TextSpan(
                  text: 'Welcome Back, ',
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: 'Myfont',
                      fontWeight: FontWeight.w400,
                      color: ColorPalette.gray2),
                  children: <TextSpan>[
                    TextSpan(
                        text: '\nStefani Wong',
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'MyfontBold',
                            color: ColorPalette.black)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20.w, 20.w, 20.w, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 180.w,
                child: Image.asset(AssetHelper.container,fit: BoxFit.cover),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
