import 'package:fitness_ui_ticket/constants/dimentions/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({super.key, this.iconLeft, this.title, this.iconRight, this.hidePass});

  final String? title;
  final bool? hidePass;
  final Widget? iconLeft,iconRight;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: hidePass ?? false,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(top: 12.w),
        hintText: title,
        hintStyle: TextStyle(color: ColorPalette.gray1,fontSize: 12.sp,fontFamily: 'Myfont',),
        filled: true,
        fillColor: ColorPalette.white,
        prefixIcon: Padding(
          padding: EdgeInsets.all(8.w),
          child: iconLeft,
        ),
        suffixIcon: Padding(
            padding: EdgeInsets.all(8.w),
            child: iconRight,),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: ColorPalette.borderColor, width: 1.w),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.w),
          borderSide: BorderSide(color: ColorPalette.borderColor, width: 1.w),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.w),
          borderSide: BorderSide(color: ColorPalette.borderColor, width: 1.w),
        ),
      ),
    );
  }
}
