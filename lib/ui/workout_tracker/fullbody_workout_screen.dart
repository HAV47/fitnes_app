import 'package:fitness_ui_ticket/constants/dimentions/color_palette.dart';
import 'package:fitness_ui_ticket/constants/helper/asset_helper.dart';
import 'package:fitness_ui_ticket/widget/button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/model/fullbody_workout_model.dart';

class FullbodyWorkoutScreen extends StatefulWidget {
  const FullbodyWorkoutScreen({super.key});

  static String routeName = 'fullbody_workout_screen';

  @override
  State<FullbodyWorkoutScreen> createState() => _FullbodyWorkoutScreenState();
}

class _FullbodyWorkoutScreenState extends State<FullbodyWorkoutScreen> {
  List<FullbodyWorkoutModel> list = [
    FullbodyWorkoutModel(image: AssetHelper.ta, title: 'Barbell'),
    FullbodyWorkoutModel(image: AssetHelper.skipping_role, title: 'Skipping Rope'),
    FullbodyWorkoutModel(image: AssetHelper.water_bottle, title: 'Water Bottle'),
    FullbodyWorkoutModel(image: AssetHelper.water_bottle, title: 'Water Bottle'),
    FullbodyWorkoutModel(image: AssetHelper.water_bottle, title: 'Water Bottle'),
  ];

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
            child: Image.asset(
              AssetHelper.fw,
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.68,
            maxChildSize: 1,
            minChildSize: 0.68,
            builder: (BuildContext contex, ScrollController scrollController) {
              return Container(
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
                        ListTile(
                          contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          title: Text('Fullbody Workout',
                              style: TextStyle(
                                  fontFamily: 'MyfontMedium',
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700)),
                          subtitle: Text(
                            '11 Exercises | 32mins | 320 Calories Burn',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 10.sp,
                                fontFamily: 'Myfont',
                                color: ColorPalette.gray1),
                          ),
                          trailing: Image.asset(AssetHelper.iconHeart,height: 20,color: Colors.red,),
                        ),
                        SizedBox(height: 10.w),
                        fw1(AssetHelper.iconCalendar, 'Schedule Workout',
                            '5/27, 09:00 AM', true),
                        SizedBox(height: 20.w),
                        fw1(AssetHelper.iconSwap, 'Difficulity', 'Beginner',
                            false),
                        SizedBox(height: 20.w),
                        Row(
                          children: [
                            Text('You\'ll Need',
                                style: TextStyle(
                                    fontFamily: 'MyfontMedium',
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    color: ColorPalette.black)),
                            Spacer(),
                            Text(
                              '5 Items',
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Myfont',
                                  color: ColorPalette.gray2),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 150.w,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: list.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.all(10.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 100.w,
                                      width: 100.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12.w),
                                        color: ColorPalette.borderColor,
                                      ),
                                      child: Image.asset(list[index].image ?? ''),
                                    ),
                                    Text(
                                      list[index].title ?? '',
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontFamily: 'Myfont',
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                        Row(
                          children: [
                            Text('Exercises',
                                style: TextStyle(
                                    fontFamily: 'MyfontMedium',
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    color: ColorPalette.black)),
                            Spacer(),
                            Text(
                              '3 Sets',
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Myfont',
                                  color: ColorPalette.gray2),
                            )
                          ],
                        ),
                        SizedBox(height: 20.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Set 1'),
                            exercises(AssetHelper.set1, 'Warm Up', '05:00'),
                            exercises(AssetHelper.set1a, 'Jumping Jack', '12x'),
                            exercises(AssetHelper.set1b, 'Skipping', '15x'),
                            exercises(AssetHelper.set1c, 'Squats', '20x'),
                            exercises(AssetHelper.set1d, 'Arm Raises', '00:53'),
                            exercises(AssetHelper.set1e, 'Rest and Drink', '02:00'),
                            Text('Set 2'),
                            exercises(AssetHelper.set2, 'Incline Push-Ups', '12x'),
                            exercises(AssetHelper.set2a, 'Push-Ups', '15x'),
                            exercises(AssetHelper.set2b, 'Skipping', '15x'),
                            exercises(AssetHelper.set2c, 'Cobra Stretch', '20x')
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
          Positioned(
            bottom: 30,
            right: 30,
            left: 30,
            child: ButtonWidget(title: 'Star Workout', )
          )
        ],
      ),
    );
  }

  Widget fw1(String image, String text1, String text2, bool highlight) {
    return Container(
      height: 50.w,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      decoration: BoxDecoration(
        gradient: highlight == true
            ? Gradients.blueLinearOpacity
            : Gradients.purpleLinearOpacity,
        borderRadius: BorderRadius.circular(16.w),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        leading: Image.asset(
          image,
          height: 20.w,
          color: ColorPalette.gray1,
        ),
        title: Row(
          children: [
            Text(text1,
                style: TextStyle(color: ColorPalette.gray1, fontSize: 10.sp)),
            Spacer(),
            Text(
              text2,
              style: TextStyle(color: ColorPalette.gray1, fontSize: 10.sp),
            )
          ],
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 14,
          color: ColorPalette.gray1,
        ),
      ),
    );
  }
  Widget exercises (String image,String text1,String text2){
    return ListTile(
      contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0).w,
      leading: Image.asset(image),
      title: Text(text1,style: TextStyle(fontSize: 14.sp,fontFamily: 'Myfont',fontWeight: FontWeight.w600),),
      subtitle: Text(text2,style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w600,fontFamily: 'Myfont',color: ColorPalette.gray1),),
      trailing: Image.asset(AssetHelper.iconRight,width: 30,),
    );
  }
}
