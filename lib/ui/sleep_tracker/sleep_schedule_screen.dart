import 'package:fitness_ui_ticket/constants/dimentions/color_palette.dart';
import 'package:fitness_ui_ticket/constants/helper/asset_helper.dart';
import 'package:fitness_ui_ticket/ui/sleep_tracker/add_alarm_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SleepScheduleScreen extends StatefulWidget {
  const SleepScheduleScreen({super.key});
static String routeName = 'sleep_schedule_screen';
  @override
  State<SleepScheduleScreen> createState() => _SleepScheduleScreenState();
}

class _SleepScheduleScreenState extends State<SleepScheduleScreen> {
  bool switchValue = true;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Sleep Schedule',
            style: TextStyle(
                fontFamily: 'MyfontBold',
                fontSize: 16.sp,
                fontWeight: FontWeight.w700)),
        leading: GestureDetector(
          onTap: (){
            Navigator.of(context).pop();
          },
          child: Image.asset(AssetHelper.iconX, scale: 0.8),
        ),
        actions: [
          Image.asset(AssetHelper.iconAppbarRight),
          SizedBox(width: 10.w)
        ],
      ),
      body: Stack(
        children:[ Padding(
          padding:  EdgeInsets.fromLTRB(20, 20, 20, 20 ).w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 140.w,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22.w),
                  gradient: Gradients.blueLinearOpacity
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                text: '\n Ideal Hours for Sleep)',
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontFamily: 'Myfont',
                                    fontWeight: FontWeight.w500,
                                    color: ColorPalette.black),
                                children: <TextSpan>[
                                  TextSpan(text: '\n8', style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400, fontFamily: 'Myfont', color: Color(0xFF92A3FD)),),
                                  TextSpan(text: 'hours ', style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400, fontFamily: 'Myfont', color: Color(0xFF92A3FD)),),
                                  TextSpan(text: '30', style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400, fontFamily: 'Myfont', color: Color(0xFF92A3FD)),),
                                  TextSpan(text: 'minutes', style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400, fontFamily: 'Myfont', color: Color(0xFF92A3FD)),),
                                ],
                              ),
                            ),
                            SizedBox(height: 15.w),
                            GestureDetector(
                              child: Container(
                                height: 40.w,
                                width: 100.w,
                                padding: EdgeInsets.all(10.w),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24.h),
                                    gradient: Gradients.blueLinear),
                                child: Text(
                                  'Learn More',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'MyfontMedium',
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w600,
                                      color: ColorPalette.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Image.asset(
                      AssetHelper.sleepSchedule1,
                      fit: BoxFit.cover,
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.w),
              Text('Today Schedule',
                  style: TextStyle(
                      fontFamily: 'MyfontMedium',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: ColorPalette.black)),
              SizedBox(height: 20.w),
              schedule(AssetHelper.sche1, 'Bedtime,', ' 09:00pm', '6', '22'),
              SizedBox(height: 20.w),
              schedule(AssetHelper.sche2, 'Alarm,', ' 05:10am', '14', '30'),
              SizedBox(height: 20.w),
              Container(
                height: 100.w,
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0).w,
                decoration: BoxDecoration(
                  gradient: Gradients.purpleLinearOpacity,
                  borderRadius: BorderRadius.circular(20.w),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'You will get',
                        style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w500,fontFamily: 'Myfont',color: ColorPalette.black),
                        children:  <TextSpan>[
                          TextSpan(text: ' 8', style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600,fontFamily: 'Myfont',color: ColorPalette.black)),
                          TextSpan(text: 'hours ',style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w500,fontFamily: 'Myfont',color: ColorPalette.black)),
                          TextSpan(text: '10',style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600,fontFamily: 'Myfont',color: ColorPalette.black)),
                          TextSpan(text: 'minutes \nfor tonight',style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w500,fontFamily: 'Myfont',color: ColorPalette.black)),
                        ],
                      ),
                    ),
                    SizedBox(width: double.infinity,child: Image.asset(AssetHelper.sche3,fit: BoxFit.fitWidth,))
                  ],
                ),
              )
            ],
          ),
        ),
          Positioned(
              bottom: 50,
              right: 20,
              child: GestureDetector(
                onTap: (){
                  Navigator.of(context).pushNamed(AddAlarmScreen.routeName);
                },
                child: Container(
                  height: 60,
                  width: 60,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.w),
                      gradient: Gradients.purpleLinear
                  ),
                  child: Text('+',style: TextStyle(color: ColorPalette.white,fontSize: 20),textAlign: TextAlign.center),
                ),
              )
          )
        ]
      ),

    );
  }
  Widget schedule (String image,String text1,String text2,String text3,String text4){
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.w),
          color: ColorPalette.white,
          boxShadow: [
            BoxShadow(
                color: ColorPalette.borderColor,
                blurRadius: 15.w,
                spreadRadius: 10.w)
          ]
      ),
      child: ListTile(
        contentPadding: EdgeInsets.fromLTRB(20, 10, 0, 10),
        leading: Image.asset(image),
        title: RichText(
          text: TextSpan(
            text: text1,
            style: TextStyle(fontFamily: 'Myfont',fontSize: 14.sp,fontWeight: FontWeight.w600,color: ColorPalette.black),
            children:  <TextSpan>[
              TextSpan(text: text2, style: TextStyle(fontFamily: 'Myfont',fontSize: 12.sp,fontWeight: FontWeight.w500,color: ColorPalette.gray1)),
            ],
          ),
        ),
        subtitle:RichText(
          text: TextSpan(
            text: 'in ',
            style: TextStyle(fontFamily: 'Myfont',fontSize: 14.sp,fontWeight: FontWeight.w500,color: ColorPalette.gray1),
            children:  <TextSpan>[
              TextSpan(text: text3, style: TextStyle(fontFamily: 'Myfont',fontSize: 16.sp,fontWeight: FontWeight.w600,color: ColorPalette.gray1)),
              TextSpan(text: 'hours ', style: TextStyle(fontFamily: 'Myfont',fontSize: 14.sp,fontWeight: FontWeight.w500,color: ColorPalette.gray1)),
              TextSpan(text: text4, style: TextStyle(fontFamily: 'Myfont',fontSize: 16.sp,fontWeight: FontWeight.w600,color: ColorPalette.gray1)),
              TextSpan(text: 'minutes', style: TextStyle(fontFamily: 'Myfont',fontSize: 14.sp,fontWeight: FontWeight.w500,color: ColorPalette.gray1)),
            ],
          ),
        ),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AssetHelper.iconMore),
            Transform.scale(
              scale:0.6,
              child: CupertinoSwitch(
                value: switchValue,
                activeColor: Color(0xFFEEA4CE),
                onChanged: (bool? value) {
                  setState(() {
                    switchValue = value ?? false;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
  
}
