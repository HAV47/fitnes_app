import 'dart:ui';

import 'package:fitness_ui_ticket/constants/dimentions/color_palette.dart';
import 'package:fitness_ui_ticket/constants/extention/text_extentions.dart';
import 'package:fitness_ui_ticket/constants/helper/asset_helper.dart';
import 'package:fitness_ui_ticket/widget/appbar_container_widget.dart';
import 'package:fitness_ui_ticket/widget/button_widget.dart';
import 'package:fitness_ui_ticket/widget/input_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static String routeName = 'login_screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isHide = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorPalette.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              AppbarContainerWidget(
                subTiltle: 'Hey there,\n',
                titleString: 'Welcome Back',
              ),
              Padding(
                padding: EdgeInsets.all(30.w),
                child: Column(
                  children: [
                    InputWidget(
                      iconLeft: Image.asset(AssetHelper.iconMessage),
                      title: 'Email',
                    ),
                    SizedBox(height: 20.w),
                    InputWidget(
                      iconLeft: Image.asset(AssetHelper.iconLock),
                      title: 'Password',
                      hidePass: isHide,
                      iconRight: GestureDetector(
                        child: isHide != true
                            ? Image.asset(AssetHelper.iconHide)
                            : Image.asset(
                                AssetHelper.iconShow,
                                color: ColorPalette.gray2,
                              ),
                        onTap: () {
                          setState(() {
                            isHide = !isHide;
                          });
                        },
                      ),
                    ),
                    SizedBox(height: 5.w),
                    GestureDetector(
                      child: Text(
                        'Forgot your password?',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 12.sp,
                            color: ColorPalette.gray2,
                            fontFamily: 'Myfont'),
                      ),
                      onTap: () {},
                    ),
                    SizedBox(height: 250.w),
                    ButtonWidget(
                      title: ' Login ',
                      icon: AssetHelper.iconLogin,
                    ),
                    SizedBox(
                      height: 20.w,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(child: Divider()),
                          Text(
                            '  Or  ',
                            style: TextStyle(fontSize: 12.sp),
                          ),
                          Expanded(child: Divider()),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.w,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: ClipRRect(
                            child: Image.asset(AssetHelper.iconGoogle),
                            borderRadius: BorderRadius.circular(5.w),
                          ),
                        ),
                        SizedBox(width: 10.w),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: ClipRRect(
                            child: Image.asset(AssetHelper.iconFb),
                            borderRadius: BorderRadius.circular(5.w),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10.w),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Don’t have an account yet?',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontFamily: 'Myfont',
                                color: ColorPalette.textColor)),
                        GestureDetector(
                          child: Text(' Register',
                              style: TextStyle(
                                  foreground: Paint()
                                    ..shader = Gradients.purpleLinear
                                        .createShader(Rect.fromLTWH(
                                            0.0, 0.0, 200.0, 70.0)),
                                  fontFamily: 'Myfont',
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700)),
                          onTap: () {
                            print('object');
                          },
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}
