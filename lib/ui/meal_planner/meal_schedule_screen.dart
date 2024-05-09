import 'package:fitness_ui_ticket/constants/dimentions/color_palette.dart';
import 'package:fitness_ui_ticket/constants/helper/asset_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MealScheduleScreen extends StatefulWidget {
  const MealScheduleScreen({super.key});
static String routeName = 'meal_schedule_screen';
  @override
  State<MealScheduleScreen> createState() => _MealScheduleScreenState();
}

class _MealScheduleScreenState extends State<MealScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Meal Schedule',style: TextStyle(fontFamily: 'MyfontBold',fontSize: 16.sp,fontWeight: FontWeight.w700)),
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
        children:[ SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('Breakfast',
                        style: TextStyle(
                            fontFamily: 'MyfontMedium',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: ColorPalette.black)),
                    Spacer(),
                    Text(
                      '2 meals | 230 calories',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Myfont',
                          color: ColorPalette.gray2),
                    )
                  ],
                ),
                SizedBox(height: 10.w),
                list(true, AssetHelper.ms1,'Honey Pancake','07:00am'),
                list(false, AssetHelper.ms2,'Coffee','07:00am'),
                Row(
                  children: [
                    Text('Lunch',
                        style: TextStyle(
                            fontFamily: 'MyfontMedium',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: ColorPalette.black)),
                    Spacer(),
                    Text(
                      '2 meals | 500 calories',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Myfont',
                          color: ColorPalette.gray2),
                    )
                  ],
                ),
                SizedBox(height: 10.w),
                list(true, AssetHelper.ms3,'Chicken Steak','01:00pm'),
                list(false, AssetHelper.ms4,'Milk','01:20pm'),
                Row(
                  children: [
                    Text('Snacks',
                        style: TextStyle(
                            fontFamily: 'MyfontMedium',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: ColorPalette.black)),
                    Spacer(),
                    Text(
                      '2 meals | 140 calories',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Myfont',
                          color: ColorPalette.gray2),
                    )
                  ],
                ),
                SizedBox(height: 10.w),
                list(true, AssetHelper.ms5,'Orange','04:30pm'),
                list(false, AssetHelper.ms6,'Apple Pie','04:40pm'),
                Row(
                  children: [
                    Text('Dinner',
                        style: TextStyle(
                            fontFamily: 'MyfontMedium',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: ColorPalette.black)),
                    Spacer(),
                    Text(
                      '2 meals | 120 calories',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Myfont',
                          color: ColorPalette.gray2),
                    )
                  ],
                ),
                SizedBox(height: 10.w),
                list(true, AssetHelper.ms7,'Salad','07:10pm'),
                list(false, AssetHelper.ms8,'Oatmeal','08:10pm'),
                SizedBox(height: 20.w),
                Text('Today Meal Nutritions',
                    style: TextStyle(
                        fontFamily: 'MyfontMedium',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: ColorPalette.black)),
                SizedBox(height: 20.w),
                nutri(true,'Calories',AssetHelper.ms9,'320 kCal',AssetHelper.ms13),
                SizedBox(height: 20.w),
                nutri(false, 'Proteins', AssetHelper.ms10,'300g', AssetHelper.ms14),
                SizedBox(height: 20.w),
                nutri(false, 'Fats', AssetHelper.ms11,'140g', AssetHelper.ms15),
                SizedBox(height: 20.w),
                nutri(false, 'Carbo', AssetHelper.ms12,'140g', AssetHelper.ms16),
              ],
            ),
          ),
        ),
          Positioned(
              bottom: 50,
              right: 20,
              child: Container(
                height: 60,
                width: 60,
                padding: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.w),
                  gradient: Gradients.purpleLinear
                ),
                child: Text('+',style: TextStyle(color: ColorPalette.white,fontSize: 20),textAlign: TextAlign.center),
              )
          )

        ]
      ),
    );
  }
  Widget list (bool highlight,String image,String title,String subtitle){
    return ListTile(
      contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      leading: Container(
        width: 60.w,
        height: 60.w,
        decoration: BoxDecoration(
          gradient: highlight == true ? Gradients.blueLinearOpacity : Gradients.purpleLinearOpacity,
          borderRadius: BorderRadius.circular(12.w),
        ),
        child: Image.asset(image,height: 30.w),
      ),
      title: Text(title,style: TextStyle(fontSize: 14.sp,fontFamily: 'Myfont',fontWeight: FontWeight.w600)),
      subtitle: Text(subtitle,style: TextStyle(fontSize: 12.sp,fontFamily: "Myfont",fontWeight: FontWeight.w500,color: ColorPalette.gray1)),
      trailing: Image.asset(AssetHelper.iconRight),
    );
  }
  Widget nutri (bool highlight,String text1,String image1,String text2,String image2){
    return Container(
      height: 65.w,
      padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.w),
          color: ColorPalette.white,
          boxShadow: [
            BoxShadow(
                color: highlight == true ? ColorPalette.borderColor : ColorPalette.white,
                blurRadius: 15.w,
                spreadRadius: 10.w)
          ]),
      child: Column(
        children: [
          Row(
            children: [
              Text(text1,style: TextStyle(fontFamily: 'Myfont',fontSize: 12.sp,fontWeight: FontWeight.w600)),
              SizedBox(width: 10.w),
              Image.asset(image1),
              Spacer(),
              Text(text2,style: TextStyle(fontSize: 10.sp,fontFamily: 'Myfont',fontWeight: FontWeight.w500,color: ColorPalette.gray1)),
            ],
          ),
          SizedBox(height: 10.w),
          Image.asset(image2),
        ],
      ),
    );
  }
}
