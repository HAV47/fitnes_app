import 'package:fitness_ui_ticket/constants/dimentions/color_palette.dart';
import 'package:fitness_ui_ticket/constants/helper/asset_helper.dart';
import 'package:fitness_ui_ticket/widget/appbar_dashboard_widget.dart';
import 'package:fitness_ui_ticket/widget/drop_button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActivityTrackerScreen extends StatefulWidget {
  const ActivityTrackerScreen({super.key});

  static String routeName = 'activity_tracker_screen';

  @override
  State<ActivityTrackerScreen> createState() => _ActivityTrackerScreenState();
}

class _ActivityTrackerScreenState extends State<ActivityTrackerScreen> {
  String dropdownValue = 'Weekly.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppbarDashboardWidget(title: 'Activity Tracker'),
            Padding(
              padding: EdgeInsets.all(30.w),
              child: Column(
                children: [
                  Container(
                    height: 140.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22.w),
                        gradient: Gradients.blueLinearOpacity),
                    child: Padding(
                      padding: EdgeInsets.all(15.w),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Today Target',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.sp,
                                    fontFamily: 'MyfontMedium'),
                              ),
                              Spacer(),
                              Container(
                                height: 25.w,
                                width: 25.w,
                                decoration: BoxDecoration(
                                  gradient: Gradients.blueLinear,
                                  borderRadius: BorderRadius.circular(8.w),
                                ),
                                child: Icon(Icons.add,
                                    color: ColorPalette.white, size: 16.sp),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.w),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.w),
                                    color: Colors.white,
                                  ),
                                  child: ListTile(
                                    leading: Image.asset(
                                      AssetHelper.at1,
                                      scale: 1.1,
                                    ),
                                    title: Text('8L',
                                        style: TextStyle(
                                            fontFamily: 'MyfontMedium',
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF9DCEFF))),
                                    subtitle: Text('Water Intake',
                                        style: TextStyle(
                                          fontSize: 8.sp,
                                          fontFamily: 'Myfont',
                                          fontWeight: FontWeight.w400,
                                          color: ColorPalette.gray1,
                                        )),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.w),
                                    color: Colors.white,
                                  ),
                                  child: ListTile(
                                    leading: Image.asset(
                                      AssetHelper.at2,
                                      scale: 1.1,
                                    ),
                                    title: Text('2400',
                                        style: TextStyle(
                                            fontFamily: 'MyfontMedium',
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF9DCEFF))),
                                    subtitle: Text('Foot Steps',
                                        style: TextStyle(
                                          fontSize: 8.sp,
                                          fontFamily: 'Myfont',
                                          fontWeight: FontWeight.w400,
                                          color: ColorPalette.gray1,
                                        )),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20.w),
                  Row(
                    children: [
                      Text('Activity Progress',
                          style: TextStyle(
                              fontFamily: 'MyfontMedium',
                              fontWeight: FontWeight.w600,
                              fontSize: 16.sp)),
                      Spacer(),
                      // DropButtonWidget()
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
                                value: 'Weekly.',
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
                  ),
                  SizedBox(height:20.w),
                  Container(

                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22.w),
                        boxShadow: [
                          BoxShadow(
                              color: ColorPalette.borderColor,
                              blurRadius: 30.w,
                              spreadRadius: 10.w),
                        ]),
                    child: Padding(
                      padding: EdgeInsets.all(20.0.w),
                      child: Row(
                        children: [
                          activityProgress(AssetHelper.ap1, 'Sun'),
                          Spacer(),
                          activityProgress(AssetHelper.ap2, 'Mon'),
                          Spacer(),
                          activityProgress(AssetHelper.ap3, 'Tue'),
                          Spacer(),
                          activityProgress(AssetHelper.ap4, 'Wed'),
                          Spacer(),
                          activityProgress(AssetHelper.ap5, 'Thu'),
                          Spacer(),
                          activityProgress(AssetHelper.ap6, 'Fri'),
                          Spacer(),
                          activityProgress(AssetHelper.ap7, 'Sat'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20.w),
                  Row(
                    children: [
                      Text('Latest Activity',
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                          lastActivity(AssetHelper.la1,'Drinking 300ml Water','About 3 minutes ago',true),
                          SizedBox(height: 20.w),
                          lastActivity(AssetHelper.la2,'Eat Snack (Fitbar)','About 10 minutes ago',false),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget activityProgress(String image, String data) {
    return Column(
      children: [Image.asset(image),SizedBox(height: 5.w,), Text(data)],
    );
  }
  Widget lastActivity (String image,String title,String subtitle,bool highlight){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22.w),
        color:  ColorPalette.white,
        boxShadow: [
          highlight == true ? BoxShadow(
              color:   ColorPalette.borderColor ,
              blurRadius: 30.w,
              spreadRadius: 20.w) : BoxShadow(
            color: ColorPalette.white,
            blurRadius: 30.w,


          )
        ]),
      child: ListTile(
        subtitle: Text(subtitle,style: TextStyle(fontSize: 10.sp,fontFamily: 'Myfont',fontWeight: FontWeight.w400),),
        leading: CircleAvatar(backgroundImage: AssetImage(image)),
        title: Text(title,style:TextStyle(fontSize: 12.sp,fontFamily: 'MyfontMedium',fontWeight: FontWeight.w500)),
        trailing: Icon(Icons.more_vert,size: 15.sp),
      ),
    );
  }
}
