import 'package:fitness_ui_ticket/constants/dimentions/color_palette.dart';
import 'package:fitness_ui_ticket/constants/helper/asset_helper.dart';
import 'package:fitness_ui_ticket/widget/button_widget.dart';
import 'package:fitness_ui_ticket/widget/dotline_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widget/cuppertino_picker_widget.dart';

class InstructWorkoutScreen extends StatefulWidget {
  const InstructWorkoutScreen({super.key});

  static String routeName = 'instruct_workout_screen';

  @override
  State<InstructWorkoutScreen> createState() => _InstructWorkoutScreenState();
}

class _InstructWorkoutScreenState extends State<InstructWorkoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.white,
      appBar: AppBar(
        leading: Image.asset(AssetHelper.iconX, scale: 0.8),
        actions: [
          Image.asset(AssetHelper.iconAppbarRight),
          SizedBox(width: 10.w)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 35.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                AssetHelper.video,
                width: double.infinity,
              ),
              SizedBox(height: 10.w),
              Text('Jumping Jack',
                  style: TextStyle(
                      fontFamily: 'MyfontMedium',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600)),
              Text('Easy | 390 Calories Burn',
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: 'Myfont',
                      fontWeight: FontWeight.w400,
                      color: ColorPalette.gray1)),
              SizedBox(height: 20.w),
              Text('Descriptions',
                  style: TextStyle(
                      fontFamily: 'MyfontMedium',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600)),
              SizedBox(height: 20.w),
              RichText(
                text: TextSpan(
                  text:
                      'A jumping jack, also known as a star jump and called a side-straddle hop in the US military, is a physical jumping exercise performed by jumping to a position with the legs spread wide  ',
                  style: TextStyle(
                      fontFamily: 'Myfont',
                      fontSize: 11.sp,
                      color: ColorPalette.gray1,
                      fontWeight: FontWeight.w400),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Read More...',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 11.sp,
                          fontFamily: 'Myfont',
                          color: Color(0xFF9DCEFF),
                        )),
                  ],
                ),
              ),
              SizedBox(height: 20.w),
              Row(
                children: [
                  Text('How To Do It',
                      style: TextStyle(
                          fontFamily: 'MyfontMedium',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: ColorPalette.black)),
                  Spacer(),
                  Text(
                    '4 Steps',
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Myfont',
                        color: ColorPalette.gray2),
                  )
                ],
              ),
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('01',style: TextStyle(color: Color(0xFFC58BF2))),
                      SizedBox(width: 10.w),
                      Column(
                        children: [
                          Image.asset(AssetHelper.dot),
                          SizedBox(height: 5.w),
                          SizedBox(height:70,child: DotlineWidget()),
                        ],
                      ),
                      SizedBox(width: 10.w),
                      SizedBox(
                        width: MediaQuery.of(context).size.width*0.65,
                        child: RichText(
                          text: TextSpan(
                            text: 'Spread Your Arms ',
                            style: TextStyle(fontSize: 14,color: Colors.black,fontFamily: 'Myfont',fontWeight: FontWeight.w600),
                            children: const <TextSpan>[
                              TextSpan(text: '\nTo make the gestures feel more relaxed, stretch your arms as you start this movement. No bending of hands.', style: TextStyle(fontWeight: FontWeight.w400,fontFamily: 'Myfont',fontSize: 12,color: ColorPalette.gray1)),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('02',style: TextStyle(color: Color(0xFFC58BF2))),
                      SizedBox(width: 10.w),
                      Column(
                        children: [
                          Image.asset(AssetHelper.dot),
                          SizedBox(height: 5.w),
                          SizedBox(height:70,child: DotlineWidget()),
                        ],
                      ),
                      SizedBox(width: 10.w),
                      SizedBox(
                        width: MediaQuery.of(context).size.width*0.65,
                        child: RichText(
                          text: TextSpan(
                            text: 'Rest at The Toe',
                            style: TextStyle(fontSize: 14,color: Colors.black,fontFamily: 'Myfont',fontWeight: FontWeight.w600),
                            children: const <TextSpan>[
                              TextSpan(text: '\nThe basis of this movement is jumping. Now, what needs to be considered is that you have to use the tips of your feet', style: TextStyle(fontWeight: FontWeight.w400,fontFamily: 'Myfont',fontSize: 12,color: ColorPalette.gray1)),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('03',style: TextStyle(color: Color(0xFFC58BF2))),
                      SizedBox(width: 10.w),
                      Column(
                        children: [
                          Image.asset(AssetHelper.dot),
                          SizedBox(height: 5.w),
                          SizedBox(height:70,child: DotlineWidget()),
                        ],
                      ),
                      SizedBox(width: 10.w),
                      SizedBox(
                        width: MediaQuery.of(context).size.width*0.65,
                        child: RichText(
                          text: TextSpan(
                            text: 'Adjust Foot Movement',
                            style: TextStyle(fontSize: 14,color: Colors.black,fontFamily: 'Myfont',fontWeight: FontWeight.w600),
                            children: const <TextSpan>[
                              TextSpan(text: '\nJumping Jack is not just an ordinary jump. But, you also have to pay close attention to leg movements.', style: TextStyle(fontWeight: FontWeight.w400,fontFamily: 'Myfont',fontSize: 12,color: ColorPalette.gray1)),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('04',style: TextStyle(color: Color(0xFFC58BF2)),),
                      SizedBox(width: 10.w),
                      Column(
                        children: [
                          Image.asset(AssetHelper.dot),
                          SizedBox(height: 5.w),
                        ],
                      ),
                      SizedBox(width: 10.w),
                      SizedBox(
                        width: MediaQuery.of(context).size.width*0.65,
                        child: RichText(
                          text: TextSpan(
                            text: 'Clapping Both Hands',
                            style: TextStyle(fontSize: 14,color: Colors.black,fontFamily: 'Myfont',fontWeight: FontWeight.w600),
                            children: const <TextSpan>[
                              TextSpan(text: '\nThis cannot be taken lightly. You see, without realizing it, the clapping of your hands helps you to keep your rhythm while doing the Jumping Jack', style: TextStyle(fontWeight: FontWeight.w400,fontFamily: 'Myfont',fontSize: 12,color: ColorPalette.gray1)),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Text('Custom Repetitions',
                  style: TextStyle(
                      fontFamily: 'MyfontMedium',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600)),
              RepetitonsPicker(),
              ButtonWidget(title: 'Save',onTap: (){
                Navigator.of(context).pop();
              },)
            ],
          ),
        ),
      ),
    );
  }
}
