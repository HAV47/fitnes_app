import 'package:fitness_ui_ticket/constants/dimentions/color_palette.dart';
import 'package:fitness_ui_ticket/constants/helper/asset_helper.dart';
import 'package:fitness_ui_ticket/widget/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  static String routeName = 'result_screen';

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
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
          Image.asset(
            AssetHelper.iconShare,
            scale: 2,
          ),
          SizedBox(width: 10.w),
          Image.asset(AssetHelper.iconAppbarRight),
          SizedBox(width: 10.w)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              SizedBox(height: 20.w),
              Container(
                height: 60.w,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.w),
                  color: ColorPalette.borderColor,
                ),
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Row(
                  children: [
                    Container(
                      height: 40.w,
                      width: 130.w,
                      decoration: BoxDecoration(
                          gradient: Gradients.blueLinear,
                          borderRadius: BorderRadius.circular(100.w)),
                      child: Center(
                          child: Text('Photo',style: TextStyle(color: ColorPalette.white, fontSize: 16.sp, fontWeight: FontWeight.w600, fontFamily: 'Myfont'))),
                    ),
                    Spacer(),
                    Container(
                      height: 40.w,
                      width: 130.w,
                      decoration: BoxDecoration(
                          color: ColorPalette.borderColor,
                          borderRadius: BorderRadius.circular(100.w)),
                      child: Center(
                          child: Text('Statistic',style: TextStyle(color: ColorPalette.gray2, fontSize: 16.sp, fontWeight: FontWeight.w500, fontFamily: 'Myfont'))),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.w),
              Row(
                children: [
                  Text('Average Progress',style: TextStyle(fontFamily: 'MyfontMedium', fontSize: 16.sp, fontWeight: FontWeight.w600, color: ColorPalette.black)),
                  Spacer(),
                  Text('Good', style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500, fontFamily: 'Myfont', color: ColorPalette.success),
                  )
                ],
              ),
              SizedBox(height: 10.w),
              SizedBox(
                width: double.infinity,
                child: Image.asset(AssetHelper.progressBar, fit: BoxFit.cover),
              ),
              SizedBox(height: 20.w),
              Row(
                children: [
                  Text('May',
                      style: TextStyle(
                          fontFamily: 'Myfont',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: ColorPalette.gray1)),
                  Spacer(),
                  Text(
                    'June',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Myfont',
                        color: ColorPalette.gray1),
                  )
                ],
              ),
              list('Front Facing', AssetHelper.r1, AssetHelper.r2),
              SizedBox(height: 10.w),
              list('Back Facing', AssetHelper.r3, AssetHelper.r4),
              SizedBox(height: 10.w),
              list('Left Facing', AssetHelper.r5, AssetHelper.r6),
              SizedBox(height: 10.w),
              list('Right Facing', AssetHelper.r7, AssetHelper.r8),
              SizedBox(height: 20.w),
              ButtonWidget(title: 'Back to Home'),
            ],
          ),
        ),
      ),
    );
  }

  Widget list(String text,String image1,String image2) {
    return Column(
      children: [
        Text(text,
            style: TextStyle(
                fontSize: 14.sp,
                fontFamily: 'Myfont',
                fontWeight: FontWeight.w600,
                color: ColorPalette.gray1)),
        SizedBox(height: 10.w),
        Row(
          children: [
            Image.asset(image1),
            Spacer(),
            Image.asset(image2)
          ],
        ),
      ],
    );
  }
}
