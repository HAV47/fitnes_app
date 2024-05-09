import 'package:fitness_ui_ticket/constants/dimentions/color_palette.dart';
import 'package:fitness_ui_ticket/constants/helper/asset_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProgressPhotoScreen extends StatefulWidget {
  const ProgressPhotoScreen({super.key});
static String routeName = 'progress_photo_screen';
  @override
  State<ProgressPhotoScreen> createState() => _ProgressPhotoScreenState();
}

class _ProgressPhotoScreenState extends State<ProgressPhotoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Progress Photo',
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
      body: Stack(
        children: [
          Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 90.w,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ColorPalette.danger.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20.w),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Center(
                  child: ListTile(
                    leading: Image.asset(AssetHelper.photo1),
                    title: Text('Reminder!',style: TextStyle(fontSize: 12.sp,color: ColorPalette.danger,fontWeight: FontWeight.w500,fontFamily: 'Myfont')),
                    subtitle: Text('Next Photos Fall On July 08',style: TextStyle(fontFamily: 'Myfont',fontWeight: FontWeight.w600,fontSize: 14.sp,color: ColorPalette.black)),
                  ),
                ),
              ),
              SizedBox(height: 20.w),
              Container(
                height: 140.w,
                padding: EdgeInsets.fromLTRB(10, 10, 20, 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.w),
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
                                text: '\n Track Your Progress Each \nMonth With ',
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontFamily: 'Myfont',
                                    fontWeight: FontWeight.w600,
                                    color: ColorPalette.black),
                                children: <TextSpan>[
                                  TextSpan(text: 'Photo', style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w700, fontFamily: 'Myfont', color: Color(0xFF92A3FD)),),
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
                      AssetHelper.photo2,
                      fit: BoxFit.cover,
                    )
                  ],
                ),
              ),
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
                    Text('Compare my Photo',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontFamily: 'Myfont',
                            fontWeight: FontWeight.w600)),
                    Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 90,
                        height: 30,
                        decoration: BoxDecoration(
                            gradient: Gradients.blueLinear,
                            borderRadius: BorderRadius.circular(50.w)),
                        child: Center(
                          child: Text(
                            'Compare',
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
              Row(
                children: [
                  Text('Gallery',
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
              Text('2 June',style: TextStyle(color: ColorPalette.gray1,fontSize: 12.sp,fontFamily: 'Myfont',fontWeight: FontWeight.w500)),
              SizedBox(height: 10.w),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.asset(AssetHelper.photo3),
                    SizedBox(width: 10.w),
                    Image.asset(AssetHelper.photo4),
                    SizedBox(width: 10.w),
                    Image.asset(AssetHelper.photo5),
                    SizedBox(width: 10.w),
                    Image.asset(AssetHelper.photo4)
                  ],
                ),
              ),
              SizedBox(height: 10.w),
              Text('5 May',style: TextStyle(color: ColorPalette.gray1,fontSize: 12.sp,fontFamily: 'Myfont',fontWeight: FontWeight.w500)),
              SizedBox(height: 10.w),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.asset(AssetHelper.photo6),
                    SizedBox(width: 10.w),
                    Image.asset(AssetHelper.photo7),
                    SizedBox(width: 10.w),
                    Image.asset(AssetHelper.photo8),
                    SizedBox(width: 10.w),
                    Image.asset(AssetHelper.photo3)
                  ],
                ),
              )
            ],
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
                child: Center(
                  child: SizedBox(
                    height: 20.w,
                    width: 20.w,
                    child: Image.asset(AssetHelper.camera,color: ColorPalette.white),
                  ),
                )
              )
          )
        ]
      ),
    );
  }
}
