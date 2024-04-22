import 'package:fitness_ui_ticket/constants/dimentions/color_palette.dart';
import 'package:fitness_ui_ticket/constants/helper/asset_helper.dart';
import 'package:fitness_ui_ticket/constants/helper/image_helper.dart';
import 'package:fitness_ui_ticket/widget/button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      // child: Stack(
      //   children: [
      //     Container(
      //       decoration: BoxDecoration(
      //         gradient: Gradients.blueLinear,
      //       ),
      //     ),
      //     Align(
      //       child: ImageHelper.loadFromAsset(AssetHelper.textIntro),
      //       alignment: Alignment.center,
      //     ),
      //     SizedBox(height: 24.h),
      //     ButtonWidget(
      //       title: 'Get Started',
      //       onTap: () {print('index');},
      //     ),
      //   ],
      // ),
      child: Container(
        height:  double.infinity,
        width: double.infinity,
        // decoration: BoxDecoration(gradient: Gradients.blueLinear),
        child: Column(
          children: [
            Spacer(),
            ImageHelper.loadFromAsset(AssetHelper.textIntro),
            Spacer(),
            Padding(
              padding: EdgeInsets.fromLTRB(20.w, 0, 20.w, 30.w),
              child: ButtonWidget(title: 'Get Started',onTap: (){
              },),
            )
          ],
        ),
      ),
    );
  }
}
