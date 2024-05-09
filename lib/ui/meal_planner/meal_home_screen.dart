import 'package:fitness_ui_ticket/constants/dimentions/color_palette.dart';
import 'package:fitness_ui_ticket/constants/helper/asset_helper.dart';
import 'package:fitness_ui_ticket/ui/meal_planner/breakfast_screen.dart';
import 'package:fitness_ui_ticket/ui/meal_planner/meal_schedule_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MealHomeScreen extends StatefulWidget {
  const MealHomeScreen({super.key});
static String routeName = 'meal_home_screen';
  @override
  State<MealHomeScreen> createState() => _MealHomeScreenState();
}

class _MealHomeScreenState extends State<MealHomeScreen> {
  String dropdownValue = 'Weekly';
  String dropdownValue1 = 'Breakfast';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Meal Planner',style: TextStyle(fontFamily: 'MyfontBold',fontSize: 16.sp,fontWeight: FontWeight.w700)),
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
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Meal Nutritions ',
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
                            gradient: Gradients .blueLinear,
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
              Image.asset(AssetHelper.meal,fit: BoxFit.cover, width: double.infinity,),
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
                    Text('Daily Meal Schedule',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontFamily: 'Myfont',
                            fontWeight: FontWeight.w600)),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(MealScheduleScreen.routeName);
                      },
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
                  Text(
                    'Today Meals',
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
                            gradient: Gradients .blueLinear,
                            borderRadius: BorderRadius.circular(100.w)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                          child: DropdownButton<String>(
                            dropdownColor: Color(0xFF9DCEFF),
                            value: dropdownValue1,
                            icon:
                            const Icon(Icons.keyboard_arrow_down_outlined),
                            style: const TextStyle(
                              color: ColorPalette.white,
                            ),
        
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue1 = newValue!;
                              });
                            },
                            items: const [
                              DropdownMenuItem<String>(
                                value: 'Breakfast',
                                child: Text('Breakfast'),
                              ),
                              DropdownMenuItem<String>(
                                value: 'Lunch',
                                child: Text('Lunch'),
                              ),
                              DropdownMenuItem<String>(
                                value: 'Dinner',
                                child: Text('Dinner'),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ), // hỏi anh chung
                ],
              ),
              SizedBox(height: 20.w),
              meal(AssetHelper.nigiri1, 'Salmon Nigiri', 'Today | 7am', true),
              SizedBox(height: 20.w),
              meal(AssetHelper.meal2, 'Lowfat Milk', 'Today | 8am', false),
              SizedBox(height: 20.w),
              Text('Find Something to Eat',
                  style: TextStyle(
                      fontFamily: 'MyfontMedium',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: ColorPalette.black)),
              SizedBox(height: 20.w),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 180.w,
                      width: 200.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(22.w),
                          topRight: Radius.circular(100.w),
                          bottomRight: Radius.circular(22.w),
                          bottomLeft: Radius.circular(22.w)),
                        gradient: Gradients.blueLinearOpacity
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 50.w),
                              Image.asset(AssetHelper.pie),
                            ],
                          ),
                          SizedBox(height: 10.w),
                          Text('Breakfast',style: TextStyle(fontSize: 14.sp,fontFamily: 'Myfont',fontWeight: FontWeight.w600)),
                          Text('120+ Foods',style: TextStyle(fontSize: 12.sp,fontFamily: 'Myfont',fontWeight:FontWeight.w500,color: ColorPalette.gray1)),
                          SizedBox(height: 20.w),
                          Container(
                            height: 30.w,
                            width: 100.w,
                            decoration: BoxDecoration(
                              gradient: Gradients.blueLinear,
                              borderRadius: BorderRadius.circular(50.w),
                            ),
                            child: GestureDetector(onTap: (){
                              Navigator.of(context).pushNamed(BreakfastScreen.routeName);
                            },child: Center(child: Text('Select',style: TextStyle(color: ColorPalette.white,fontFamily: 'Myfont',fontWeight: FontWeight.w700,fontSize: 12.sp)))),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 20.w),
                    Container(
                      height: 180.w,
                      width: 210.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(22.w),
                              topRight: Radius.circular(100.w),
                              bottomRight: Radius.circular(22.w),
                              bottomLeft: Radius.circular(22.w)),
                          gradient: Gradients.blueLinearOpacity
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 50.w),
                              Image.asset(AssetHelper.meal3),
                            ],
                          ),
                          SizedBox(height: 10.w),
                          Text('Lunch',style: TextStyle(fontSize: 14.sp,fontFamily: 'Myfont',fontWeight: FontWeight.w600)),
                          Text('130+ Foods',style: TextStyle(fontSize: 12.sp,fontFamily: 'Myfont',fontWeight:FontWeight.w500,color: ColorPalette.gray1)),
                          SizedBox(height: 20.w),
                          Container(
                            height: 30.w,
                            width: 100.w,
                            decoration: BoxDecoration(
                              gradient: Gradients.purpleLinear,
                              borderRadius: BorderRadius.circular(50.w),
                            ),
                            child: Center(child: Text('Select',style: TextStyle(color: ColorPalette.white,fontFamily: 'Myfont',fontWeight: FontWeight.w700,fontSize: 12.sp))),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  Widget meal (String image,String text1,String text2,bool highlight){
    return Container(
      height: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.w),
          color: ColorPalette.white,
          boxShadow: [
            BoxShadow(
                color: ColorPalette.borderColor,
                blurRadius: 15.w,
                spreadRadius: 10.w)
          ]
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: ListTile(
          leading: Image.asset(image,height: 40.w,),
          title: Text(text1,
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'MyfontMedium')),
          subtitle: Text(text2,
              style: TextStyle(
                  fontFamily: 'Myfont',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: ColorPalette.gray2)),
          trailing: Image.asset(highlight == true ? AssetHelper.reminders : AssetHelper.reminders_out ,scale: 1.5,),
        ),
      ),
    );

  }
}
