import 'package:fitness_ui_ticket/constants/dimentions/color_palette.dart';
import 'package:fitness_ui_ticket/constants/helper/asset_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WorkoutHomeScreen extends StatefulWidget {
  const WorkoutHomeScreen({super.key});

  static String routeName = 'home_screen';

  @override
  State<WorkoutHomeScreen> createState() => _WorkoutHomeScreenState();
}

class _WorkoutHomeScreenState extends State<WorkoutHomeScreen> {
  bool switchValue = true;
  bool switchValue1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Center(
          child: Container(
            height: 30.w,
            width: 30.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.w),
                color: ColorPalette.white),
            child: Image.asset(AssetHelper.iconBackAppbar),
          ),
        ),
        title: Text('Workout Tracker',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: 'MyfontBold',
                fontSize: 16.sp,
                color: ColorPalette.white)),
        actions: [
          Center(
            child: Container(
              height: 30.w,
              width: 30.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.w),
                  color: ColorPalette.white),
              child: Image.asset(AssetHelper.iconAppbarRight),
            ),
          ),
          SizedBox(
            width: 10.w,
          )
        ],
        flexibleSpace: Container(
            decoration: BoxDecoration(gradient: Gradients.blueLinear)),
      ),
      body: Stack(
        children: [
          Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: double.infinity,
              decoration: BoxDecoration(gradient: Gradients.blueLinear),
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 100),
                child: Image.asset(
                  AssetHelper.wo1,
                ),
              )),
          DraggableScrollableSheet(
            initialChildSize: 0.68,
            maxChildSize: 1,
            minChildSize: 0.68,
            builder: (BuildContext contex, ScrollController scrollController) {
              return Container(
                // color: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.w),
                    topRight: Radius.circular(40.w),
                  ),
                ),
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(top: 15.w),
                          child: Container(
                            height: 5,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50.w)),
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: 20.w),
                        Container(
                          height: 60.w,
                          decoration: BoxDecoration(
                            gradient: Gradients.blueLinearOpacity,
                            borderRadius: BorderRadius.circular(16.sp),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 20.w),
                              Text('Daily Workout Schedule',
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontFamily: 'MyfontMedium',
                                      fontWeight: FontWeight.w500)),
                              Spacer(),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  width: 70,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      gradient: Gradients.blueLinear,
                                      borderRadius:
                                          BorderRadius.circular(50.w)),
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
                              SizedBox(width: 20.w),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.w),
                        Row(
                          children: [
                            Text('Upcoming Workout',
                                style: TextStyle(
                                    fontFamily: 'MyfontMedium',
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
                        SizedBox(height: 20.w),
                        Container(
                          height: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.w),
                              color: ColorPalette.white,
                              boxShadow: [
                                BoxShadow(
                                    color: ColorPalette.borderColor,
                                    blurRadius: 15.w,
                                    spreadRadius: 10.w)
                              ]),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundImage:
                                    AssetImage(AssetHelper.wo_pic1),
                                radius: 30.w,
                              ),
                              title: Text('Fullbody Workout',
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'MyfontMedium')),
                              subtitle: Text('Today, 03:00pm',
                                  style: TextStyle(
                                      fontFamily: 'Myfont',
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w400,
                                      color: ColorPalette.gray2)),
                              trailing: Transform.scale(
                                scale: 0.8,
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

                              // leading: Text('đấ'),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.w),
                        Container(
                          height: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.w),
                              color: ColorPalette.white,
                              boxShadow: [
                                BoxShadow(
                                    color: ColorPalette.borderColor,
                                    blurRadius: 15.w,
                                    spreadRadius: 10.w)
                              ]),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundImage:
                                    AssetImage(AssetHelper.wo_pic1),
                                radius: 30.w,
                              ),
                              title: Text('Upperbody Workout',
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'MyfontMedium')),
                              subtitle: Text('June 05, 02:00pm',
                                  style: TextStyle(
                                      fontFamily: 'Myfont',
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w400,
                                      color: ColorPalette.gray2)),
                              trailing: Transform.scale(
                                scale: 0.8,
                                child: CupertinoSwitch(
                                  value: switchValue1,
                                  activeColor: Color(0xFFEEA4CE),
                                  onChanged: (bool? value) {
                                    setState(() {
                                      switchValue1 = value ?? false;
                                    });
                                  },
                                ),
                              ),

                              // leading: Text('đấ'),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.w),
                        Text('What Do You Want to Train',
                            style: TextStyle(
                                fontFamily: 'MyfontMedium',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: ColorPalette.black)),
                        SizedBox(height: 20.w),
                        train('Fullbody Workout','11 Exercises | 32mins',AssetHelper.train1),
                        SizedBox(height: 20.w),
                        train('Lowebody Workout','12 Exercises | 40mins',AssetHelper.train2),
                        SizedBox(height: 20.w),
                        train('AB Workout','14 Exercises | 20mins',AssetHelper.train3),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
  Widget train (String title,String subtitle,String image){
    return Container(
      decoration: BoxDecoration(
          gradient: Gradients.blueLinearOpacity,
          borderRadius: BorderRadius.circular(20.w)),
      child: Padding(
        padding:  EdgeInsets.all(20.w),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w500,fontFamily: 'MyfontMedium')),
                Text(subtitle,style: TextStyle(fontFamily: 'Myfont',fontSize: 12.sp,color: ColorPalette.gray1)),
                SizedBox(height: 20.w),
                Container(
                  height: 35.w,
                  width: 100.w,
                  decoration: BoxDecoration(
                    color: ColorPalette.white,
                    borderRadius: BorderRadius.circular(50.w),
                  ),
                  child: Center(
                    child: Text('View more',style: TextStyle(fontSize: 10.sp,fontFamily: 'Myfont',color: Color(0xFF92A3FD)),),),
                )
              ],
            ),
            Spacer(),
            Stack(
              children: [
                Image.asset(image),

              ],
            )
          ],
        ),
      ),
    );
  }
}
