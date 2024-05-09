import 'package:fitness_ui_ticket/constants/dimentions/color_palette.dart';
import 'package:fitness_ui_ticket/constants/helper/asset_helper.dart';
import 'package:fitness_ui_ticket/ui/sleep_tracker/sleep_schedule_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SleepTrackerScreen extends StatefulWidget {
  const SleepTrackerScreen({super.key});

  static String routeName = 'sleep_tracker_screen';

  @override
  State<SleepTrackerScreen> createState() => _SleepTrackerScreenState();
}

class _SleepTrackerScreenState extends State<SleepTrackerScreen> {
  bool switchValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Sleep Tracker',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  width: double.infinity,
                  child:
                      Image.asset(AssetHelper.sleeptracker, fit: BoxFit.cover)),
              SizedBox(height: 20.w),
              Container(
                  height: 150.w,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.w),
                      image: DecorationImage(
                          image: AssetImage(AssetHelper.sleeptracker2),
                          fit: BoxFit.cover)),
                  padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: RichText(
                    text: TextSpan(
                      text: 'Last Night Sleep ',
                      style: TextStyle(fontSize: 14.sp, color: ColorPalette.white, fontFamily: 'Myfont', fontWeight: FontWeight.w600),
                      children: <TextSpan>[
                        TextSpan(
                            text: '\n8', style: TextStyle(fontSize: 16.sp, color: ColorPalette.white, fontFamily: 'Myfont', fontWeight: FontWeight.w600)),
                        TextSpan(
                            text: 'h ', style: TextStyle(fontSize: 14.sp, color: ColorPalette.white, fontFamily: 'Myfont', fontWeight: FontWeight.w500)),
                        TextSpan(
                            text: '20', style: TextStyle(fontSize: 16.sp, color: ColorPalette.white, fontFamily: 'Myfont', fontWeight: FontWeight.w600)),
                        TextSpan(
                            text: 'm', style: TextStyle(fontSize: 14.sp, color: ColorPalette.white, fontFamily: 'Myfont', fontWeight: FontWeight.w500)),
                      ],
                    ),
                  )),
              SizedBox(height: 20.w),
              Container(
                height: 60.w,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                decoration: BoxDecoration(
                  gradient: Gradients.blueLinearOpacity,
                  borderRadius: BorderRadius.circular(16.w),
                ),
                child: Row(
                  children: [
                    Text('Daily Sleep Schedule',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontFamily: 'Myfont',
                            fontWeight: FontWeight.w600)),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(SleepScheduleScreen.routeName);
                      },
                      child: Container(
                        width: 70,
                        height: 30,
                        decoration: BoxDecoration(
                            gradient: Gradients.blueLinear,
                            borderRadius: BorderRadius.circular(50.w)),
                        child: Center(
                          child: Text(
                            'Check',
                            style: TextStyle(
                                fontFamily: 'Myfont',
                                fontWeight: FontWeight.w400,
                                fontSize: 14.w,
                                color: ColorPalette.white),
                          ),
                        ),
                      ),
                    ),
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
              schedule(AssetHelper.sche2, 'Alarm,', ' 05:10am', '14', '30')

            ],
          ),
        ),
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
