import 'package:fitness_ui_ticket/constants/dimentions/color_palette.dart';
import 'package:fitness_ui_ticket/constants/extention/text_extentions.dart';
import 'package:fitness_ui_ticket/constants/helper/asset_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, required this.title, this.onTap, this.icon});

  final String title;
  final String? icon;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.h),
            // color: ColorPalette.linearBlue,
          gradient: Gradients.blueLinear
          // color: Colors.red
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon != null ? Image.asset(icon!) : SizedBox.shrink(),
            Text(
              title,
              style: TextStyles.defaultStyle.bold.whiteTextColor,
            ),
          ],
        ),
        alignment: Alignment.center,
      ),
    );
  }
}
