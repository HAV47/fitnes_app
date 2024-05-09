import 'package:fitness_ui_ticket/constants/dimentions/color_palette.dart';
import 'package:fitness_ui_ticket/constants/helper/asset_helper.dart';
import 'package:fitness_ui_ticket/ui/dashboard/ativity_tracker_screen.dart';
import 'package:fitness_ui_ticket/ui/dashboard/complete_setup_screen.dart';
import 'package:fitness_ui_ticket/ui/dashboard/notification_screen.dart';
import 'package:fitness_ui_ticket/ui/dashboard/profile_screen.dart';
import 'package:fitness_ui_ticket/ui/meal_planner/meal_home_screen.dart';
import 'package:fitness_ui_ticket/ui/sleep_tracker/sleep_tracker_screen.dart';
import 'package:fitness_ui_ticket/ui/workout_tracker/workout_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/model/work_out_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static String routeName = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String dropdownValue = 'Weekly';

  List<WorkOutModel> listworkout = [
    WorkOutModel(
      image: AssetHelper.workOut1,
      title: 'Fullbody Workout',
      titleString: '180 Calories Burn | 20minutes',
      subtitle: AssetHelper.workOutImage,
    ),
    WorkOutModel(
      image: AssetHelper.workOut2,
      title: 'Lowerbody Workout',
      titleString: '180 Calories Burn | 20minutes',
      subtitle: AssetHelper.workOutImage2,
    ),
    WorkOutModel(
      image: AssetHelper.workOut3,
      title: 'Ab Workout',
      titleString: '180 Calories Burn | 20minutes',
      subtitle: AssetHelper.workOutImage3,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.white,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: ColorPalette.white,
        automaticallyImplyLeading: false,
        actions: [
          GestureDetector(
        onTap: (){
          Navigator.of(context).pushNamed(NotificationScreen.routeName);
        },
            child: Padding(
              padding: EdgeInsets.only(right: 30.w),
              child: Image.asset(AssetHelper.notifyIcon, width: 24.w,height: 24.w,),
            ),
          )
        ],
        title: Padding(
          padding: EdgeInsets.all(10.w),
          child: Column(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.of(context).pushNamed(ProfileScreen.routeName);
                },
                child: RichText(
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
            // mainAxisAlignment: MainAxisAlignment.center,
            // mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 180.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22.w),
                  image: const DecorationImage(
                    image: AssetImage(AssetHelper.container),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.55,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                text: '\nBMI (Body Mass Index)',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontFamily: 'MyfontMedium',
                                    fontWeight: FontWeight.w600,
                                    color: ColorPalette.white),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: '\nYou have a normal weight',
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Myfont',
                                          color: ColorPalette.white)),
                                ],
                              ),
                            ),
                            SizedBox(height: 30.w),
                            GestureDetector(
                              child: Container(
                                height: 40.w,
                                width: 100.w,
                                padding: EdgeInsets.all(10.w),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24.h),
                                    gradient: Gradients.purpleLinear),
                                child: Text(
                                  'View More',
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
                    Image.asset(
                      AssetHelper.banner,
                      fit: BoxFit.cover,
                    )
                  ],
                ),
              ),
              SizedBox(height: 25.w),
              Container(
                height: 60.w,
                decoration: BoxDecoration(
                  gradient: Gradients.blueLinearOpacity,
                  borderRadius: BorderRadius.circular(16.w),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Text(
                          'Today Target',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontFamily: 'Myfont',
                              color: ColorPalette.black,fontWeight: FontWeight.w600),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushNamed(CompleteSetupScreen.routeName);
                        },
                        child: Container(
                          height: 40.w,
                          width: 100.w,
                          padding: EdgeInsets.all(10.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24.h),
                              gradient: Gradients.blueLinear),
                          child: Text(
                            'Check',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Myfont',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: ColorPalette.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.w),
              Text(
                'Activity Status',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontFamily: 'MyfontMedium',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 20.w),
              Image.asset(AssetHelper.activity,
                  fit: BoxFit.cover, width: double.infinity),
              SizedBox(height: 20.w),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22.w),
                        color: ColorPalette.white,
                        boxShadow: [
                          BoxShadow(
                              color: ColorPalette.borderColor,
                              blurRadius: 30.w,
                              spreadRadius: 20.w)
                        ]),
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: 300.w,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(13.w, 20.w, 5.w, 10.w),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushNamed(ActivityTrackerScreen.routeName);
                        },
                        child: Row(
                          children: [
                            Image.asset(AssetHelper.water),
                            Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Water Intake',
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      fontFamily: 'MyfontMedium',
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 10.w),
                                Text(
                                  '4 Liters',
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontFamily: 'MyfonMedium',
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF9DCEFF)),
                                ),
                                SizedBox(height: 10.w),
                                Text(
                                  'Real time updates',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Myfont',
                                      fontSize: 10.sp,
                                      color: ColorPalette.gray1),
                                ),
                                waterRealTime('6am - 8am', true, '600ml'),
                                waterRealTime('9am - 11am', true, '500ml'),
                                waterRealTime('11am - 2pm', true, '1000ml'),
                                waterRealTime('2pm - 4pm', true, '700ml'),
                                waterRealTime('4pm - now', false, '900ml'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Column(
                    children: [
                      Container(
                        height: 140.w,
                        width: MediaQuery.of(context).size.width * 0.43,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22.w),
                          color: ColorPalette.white,
                          boxShadow: [
                            BoxShadow(
                                color: ColorPalette.borderColor,
                                blurRadius: 30.w,
                                spreadRadius: 20.w)
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(20.w),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.of(context).pushNamed(SleepTrackerScreen.routeName);
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sleep',
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      fontFamily: 'MyfontMedium',
                                      fontWeight: FontWeight.w500),
                                ),
                                // SizedBox(height: 5.w),
                                RichText(
                                  text: TextSpan(
                                    text: '8',
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        fontFamily: 'MyfontMedium',
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFF9DCEFF)),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'h',
                                        style: TextStyle(
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'MyfontMedium',
                                            color: Color(0xFF9DCEFF)),
                                      ),
                                      TextSpan(
                                        text: ' 20',
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'MyfontMedium',
                                            color: Color(0xFF9DCEFF)),
                                      ),
                                      TextSpan(
                                        text: 'm',
                                        style: TextStyle(
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'MyfontMedium',
                                            color: Color(0xFF9DCEFF)),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                    child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                    image: AssetImage(AssetHelper.sleep),
                                    fit: BoxFit.cover,
                                  )),
                                ))
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.w),
                      Container(
                        height: 140.w,
                        width: MediaQuery.of(context).size.width * 0.43,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22.w),
                          color: ColorPalette.white,
                          boxShadow: [
                            BoxShadow(
                                color: ColorPalette.borderColor,
                                blurRadius: 30.w,
                                spreadRadius: 20.w)
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(20.w),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.of(context).pushNamed(MealHomeScreen.routeName);
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Calories',
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      fontFamily: 'MyfontMedium',
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  '760 kCal',
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontFamily: 'MyfontMedium',
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF9DCEFF)),
                                ),
                                Expanded(
                                    child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(AssetHelper.kCal),
                                          fit: BoxFit.fitHeight)),
                                ))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 20.w),
              Row(
                children: [
                  Text(
                    'Workout Progress',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'MyfontMedium'),
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Container(
                        height: 30.w,
                        // width: 50.w,
                        decoration: BoxDecoration(
                            gradient: Gradients.blueLinear,
                            borderRadius: BorderRadius.circular(100.w)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                          child: DropdownButton<String>(
                            dropdownColor: Color(0xFF9DCEFF),
                            value: dropdownValue,
                            icon:
                                const Icon(Icons.keyboard_arrow_down_outlined),
                            style: const TextStyle(
                              color: ColorPalette.white,
                            ),

                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue = newValue!;
                              });
                            },
                            items: const [
                              DropdownMenuItem<String>(
                                value: 'Weekly',
                                child: Text('Weekly'),
                              ),
                              DropdownMenuItem<String>(
                                value: 'Daily',
                                child: Text('Daily'),
                              ),
                              DropdownMenuItem<String>(
                                value: 'Months',
                                child: Text('Months'),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ), // hỏi anh chung
                ],
              ),
              Image.asset(AssetHelper.proges),
              SizedBox(height: 20.w),
              Row(
                children: [
                  Text('Latest Workout',
                      style: TextStyle(
                          fontFamily: 'Myfont',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: ColorPalette.black)),
                  Spacer(),
                  Text(
                    'See more',
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Myfont',
                        color: ColorPalette.gray2),
                  )
                ],
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: listworkout.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(10.w),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushNamed(WorkoutHomeScreen.routeName);
                      },
                      child: workOut(
                          listworkout[index].image ?? '',
                          listworkout[index].title ?? '',
                          listworkout[index].titleString ?? '',
                          listworkout[index].subtitle ?? '',
                          listworkout[index].image == AssetHelper.workOut2
                              ? true
                              : false),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget waterRealTime(String data, bool dot, String subtitle) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text('●', style: TextStyle(color: Color(0xFFEEA4CE))),
            SizedBox(width: 10.w),
            Text(data,
                style: TextStyle(
                    fontSize: 8.sp,
                    fontWeight: FontWeight.w400,
                    color: ColorPalette.gray2))
          ],
        ),
        Row(
          children: [
            Column(
              children: List.generate(5, (index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.w),
                  child: dot == true
                      ? Container(
                          color: Colors.black,
                          width: 1,
                          height: 1,
                        )
                      : SizedBox.shrink(),
                );
              }),
            ),
            SizedBox(
              width: 15.w,
            ),
            Text(
              subtitle,
              style: TextStyle(fontSize: 8.sp, color: Color(0xFFEEA4CE)),
            ),
          ],
        )
      ],
    );
  }

  Widget workOut(String image, String title, String titleString,
      String subtitle, bool highlight) {
    return Container(
      child: ListTile(
        leading: CircleAvatar(backgroundImage: AssetImage(image)),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: TextStyle(
                    color: highlight == true
                        ? ColorPalette.black
                        : ColorPalette.gray3,
                    fontFamily: 'MyfonMedium',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500),),
            Text(
              titleString,
              style: TextStyle(
                  fontSize: 10.sp,
                  fontFamily: 'Myfont',
                  color: Color(0xFFA4A9AD),
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
        subtitle: Image.asset(subtitle),
        trailing: Image.asset(AssetHelper.workOut),
      ),
    );
  }
}
