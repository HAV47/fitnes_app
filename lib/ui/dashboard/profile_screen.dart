import 'package:fitness_ui_ticket/constants/dimentions/color_palette.dart';
import 'package:fitness_ui_ticket/constants/helper/asset_helper.dart';
import 'package:fitness_ui_ticket/widget/appbar_dashboard_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  static String routeName = 'profile_screen';

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppbarDashboardWidget(
              title: 'Profile',
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                        backgroundImage: AssetImage(AssetHelper.la1),
                        radius: 30.w,
                        backgroundColor: Color(0xFF92A3FD)),
                    title: Text('Stefani Wong',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontFamily: 'MyfontMedium',
                            fontWeight: FontWeight.w500)),
                    subtitle: Text('Lose a Fat Program',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            color: ColorPalette.gray1,
                            fontFamily: 'Myfont')),
                    trailing: Container(
                      height: 30.w,
                      width: 80.w,
                      decoration: BoxDecoration(
                          gradient: Gradients.blueLinear,
                          borderRadius: BorderRadius.circular(22.w)),
                      child: Center(
                        child: Text(
                          'Edit',
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: 'Myfont',
                              fontWeight: FontWeight.w500,
                              color: ColorPalette.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.w),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            info('180cm', 'Height'),
                            SizedBox(width: 20.w),
                            info('65kg', 'Weight'),
                            SizedBox(width: 20.w),
                            info('22yo', 'Age'),
                          ],
                        ),
                        SizedBox(height: 20.w),
                        Container(
                          padding: EdgeInsets.all(20.w),
                          height: 200.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.w),
                              color: ColorPalette.white,
                              boxShadow: [
                                BoxShadow(
                                    color: ColorPalette.borderColor,
                                    blurRadius: 15.w,
                                    spreadRadius: 10.w)
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Account',
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'MyfontMedium',
                                      color: ColorPalette.black)),
                              SizedBox(height: 10.w),
                              account(CupertinoIcons.person, 'Personal Data'),
                              account(CupertinoIcons.news, 'Achievement'),
                              account(CupertinoIcons.chart_pie,
                                  'Personal Data'),
                              account(
                                  CupertinoIcons.chart_bar_square, 'Personal Data')
                            ],
                          ),
                        ),
                        SizedBox(height: 20.w),
                        Container(
                          padding: EdgeInsets.all(20.w),
                          height: 100.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.w),
                              color: ColorPalette.white,
                              boxShadow: [
                                BoxShadow(
                                    color: ColorPalette.borderColor,
                                    blurRadius: 15.w,
                                    spreadRadius: 10.w)
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Notification',
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'MyfontMedium',
                                      color: ColorPalette.black)),
                              Expanded(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.notifications_none_outlined,
                                      color: Color(0xFF9DCEFF),
                                    ),
                                    SizedBox(width: 10.w),
                                    Text('Pop-up Notification',
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            fontFamily: 'Myfont',
                                            fontWeight: FontWeight.w400,
                                            color: ColorPalette.gray1)),
                                    Spacer(),
                                    // Container(decoration:BoxDecoration(gradient: Gradients.purpleLinear),child: Icon(Icons.toggle_on_outlined,color: ColorPalette.white,size: 30.sp,))
                                    CupertinoSwitch(
                                      value: switchValue,
                                      activeColor: Color(0xFFEEA4CE),
                                      onChanged: (bool? value) {
                                        setState(() {
                                          switchValue = value ?? false;
                                        });
                                      },
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 20.w),
                        Container(
                          height: 160.w,
                          padding: EdgeInsets.all(20.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.w),
                              color: ColorPalette.white,
                              boxShadow: [
                                BoxShadow(
                                    color: ColorPalette.borderColor,
                                    blurRadius: 15.w,
                                    spreadRadius: 10.w)
                              ]),
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Other',
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'MyfontMedium',
                                      color: ColorPalette.black)),
                              SizedBox(height: 10.w),
                              account(CupertinoIcons.mail, 'Personal Data'),
                              account(CupertinoIcons.checkmark_shield, 'Achievement'),
                              account(Icons.settings_outlined,'Personal Data'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget info(String title, String subtitle) {
    return Expanded(
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.w),
            color: ColorPalette.white,
            boxShadow: [
              BoxShadow(
                  color: ColorPalette.borderColor,
                  blurRadius: 15.w,
                  spreadRadius: 10.w)
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title,
                style: TextStyle(
                    fontSize: 14.sp,
                    fontFamily: 'MyfontMedium',
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF9DCEFF))),
            Text(subtitle,
                style: TextStyle(
                    fontSize: 12.sp,
                    fontFamily: 'Myfont',
                    fontWeight: FontWeight.w400,
                    color: ColorPalette.gray1)),
          ],
        ),
      ),
    );
  }

  Widget account(IconData icon, String title) {
    return Expanded(
      child: Row(
        children: [
          Icon(
            icon,
            color: Color(0xFF9DCEFF),
          ),
          SizedBox(width: 10.w),
          Text(title,
              style: TextStyle(
                  fontSize: 12.sp,
                  fontFamily: 'Myfont',
                  fontWeight: FontWeight.w400,
                  color: ColorPalette.gray1)),
          Spacer(),
          Icon(
            Icons.arrow_forward_ios,
            size: 15.sp,
          )
        ],
      ),
    );
  }
}
