import 'package:fitness_ui_ticket/constants/dimentions/color_palette.dart';
import 'package:fitness_ui_ticket/constants/helper/asset_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BreakfastScreen extends StatefulWidget {
  const BreakfastScreen({super.key});

  static String routeName = 'breakfast_screen';

  @override
  State<BreakfastScreen> createState() => _BreakfastScreenState();
}

class _BreakfastScreenState extends State<BreakfastScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Breakfast',
            style: TextStyle(
                fontFamily: 'MyfontBold',
                fontSize: 16.sp,
                fontWeight: FontWeight.w700)),
        leading: Image.asset(AssetHelper.iconX, scale: 0.8),
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
              Container(
                decoration: BoxDecoration(
                    color: ColorPalette.white,
                    boxShadow: [
                      BoxShadow(
                          color: ColorPalette.borderColor,
                          blurRadius: 15.w,
                          spreadRadius: 10.w)
                    ]),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    hintText: 'Search Pancake',
                    hintStyle: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: 'Myfont',
                        fontWeight: FontWeight.w500,
                        color: ColorPalette.gray3),
                    prefixIcon: Image.asset(
                      AssetHelper.search,
                      color: ColorPalette.gray2,
                      scale: 2,
                    ),
                    suffixIcon: SizedBox(
                      width: 50,
                      child: Row(
                        children: [
                          Text(
                            '| ',
                            style: TextStyle(
                              fontSize: 30,
                              color: ColorPalette.gray3,
                            ),
                          ),
                          Image.asset(
                            AssetHelper.filter,
                            height: 25,
                          )
                        ],
                      ),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.w)),
                  ),
                ),
              ),
              SizedBox(height: 20.w),
              Text('Category',
                  style: TextStyle(
                      fontFamily: 'MyfontMedium',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: ColorPalette.black)),
              SizedBox(height: 20.w),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    category(true,AssetHelper.pic,'Salad'),
                    SizedBox(width: 20.w),
                    category(false,AssetHelper.cate2,'Cake'),
                    SizedBox(width: 20.w),
                    category(true,AssetHelper.cate3,'Pie'),
                    SizedBox(width: 20.w),
                    category(false,AssetHelper.cake3,'Smothie'),
                  ],
                ),
              ),
              SizedBox(height: 20.w),
              Text('Recommendation \nfor Diet',
                  style: TextStyle(
                      fontFamily: 'MyfontMedium',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: ColorPalette.black)),
              SizedBox(height: 20.w),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 240.w,
                      width: 200.w,
                      decoration: BoxDecoration(gradient: Gradients.blueLinearOpacity,borderRadius: BorderRadius.circular(20.w)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(AssetHelper.recomend1),
                          SizedBox(height: 20.w),
                          Text('Honey Pancake',style: TextStyle(fontFamily: 'Myfont',fontSize: 14.sp,fontWeight: FontWeight.w600)),
                          Text('Easy | 30mins | 180kCal',style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w500,fontFamily: 'Myfont',color: ColorPalette.gray1)),
                          SizedBox(height: 20.w),
                          Container(
                            height: 40.w,
                            width: 110.w,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100.w),gradient: Gradients.blueLinear),
                            child: Center(
                              child: Text('View',style: TextStyle(fontFamily: 'Myfont',fontWeight: FontWeight.w700,fontSize: 12.sp,color: ColorPalette.white),),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 20.w),
                    Container(
                      height: 240.w,
                      width: 200.w,
                      decoration: BoxDecoration(gradient: Gradients.purpleLinearOpacity,borderRadius: BorderRadius.circular(20.w)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(AssetHelper.recomend2),
                          SizedBox(height: 20.w),
                          Text('Canai Bread',style: TextStyle(fontFamily: 'Myfont',fontSize: 14.sp,fontWeight: FontWeight.w600)),
                          Text('Easy | 20mins | 230kCal',style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w500,fontFamily: 'Myfont',color: ColorPalette.gray1)),
                          SizedBox(height: 20.w),
                          Container(
                            height: 40.w,
                            width: 110.w,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100.w),gradient: Gradients.purpleLinear),
                            child: Center(
                              child: Text('View',style: TextStyle(fontFamily: 'Myfont',fontWeight: FontWeight.w700,fontSize: 12.sp,color: ColorPalette.white),),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.w),
              Text('Popular',
                  style: TextStyle(
                      fontFamily: 'MyfontMedium',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: ColorPalette.black)),
              SizedBox(height: 20.w),
              popular(true,AssetHelper.popular1,'Blueberry Pancake','Medium | 30mins | 230kCal'),
              SizedBox(height: 20.w),
              popular(false, AssetHelper.popular2, 'Salmon Nigiri', 'Medium | 20mins | 120kCal'),
            ],
          ),
        ),
      ),
    );
  }

  Widget category(bool highlight,String image,String text1) {
    return Container(
      height: 100.w,
      width: 80.w,
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(16.w),
          gradient: highlight == true
              ? Gradients.blueLinearOpacity
              : Gradients.purpleLinearOpacity),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(image,height: 41.w,),
          SizedBox(height: 10.w),
          Text(text1,style: TextStyle(fontSize: 12.sp,fontFamily: 'Myfont',fontWeight: FontWeight.w500),)
        ],
      ),
    );
  }
  Widget popular (bool highlight,String image,String title,String subtitle){
    return Container(
      decoration: BoxDecoration(
          color: ColorPalette.white,
          borderRadius: BorderRadius.circular(16.sp),
          boxShadow: [
          BoxShadow(
            color: highlight == true ? ColorPalette.borderColor : ColorPalette.white,
            blurRadius: 15.w,
            spreadRadius: 10.w)
      ]),
      child: ListTile(
        leading: Image.asset(image),
        title: Text(title,style: TextStyle(fontSize: 14.sp,fontFamily: 'Myfont',fontWeight: FontWeight.w600)),
        subtitle: Text(subtitle,style: TextStyle(fontSize: 12.sp,fontFamily: 'Myfont',fontWeight: FontWeight.w500,color: ColorPalette.gray1)),
        trailing: Image.asset(AssetHelper.workOut),
      ),
    );
  }
}
