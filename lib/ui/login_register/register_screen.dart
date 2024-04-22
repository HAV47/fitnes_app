import 'package:fitness_ui_ticket/constants/dimentions/color_palette.dart';
import 'package:fitness_ui_ticket/constants/helper/asset_helper.dart';
import 'package:fitness_ui_ticket/ui/login_register/complete_screen.dart';
import 'package:fitness_ui_ticket/widget/appbar_container_widget.dart';
import 'package:fitness_ui_ticket/widget/button_widget.dart';
import 'package:fitness_ui_ticket/widget/input_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  static String routeName = 'register_screen';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppbarContainerWidget(
              subTiltle: 'Hey there,',
              titleString: 'Create an Account',
            ),
            Padding(
              padding: EdgeInsets.all(20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10.w),
                  InputWidget(
                    iconLeft: Image.asset(AssetHelper.iconProfile,
                        color: ColorPalette.black),
                    title: 'First Name',
                  ),
                  SizedBox(height: 20.w),
                  InputWidget(
                    iconLeft: Image.asset(AssetHelper.iconProfile2,
                        color: ColorPalette.black),
                    title: 'Last Name',
                  ),
                  SizedBox(height: 20.w),
                  InputWidget(
                    iconLeft: Image.asset(AssetHelper.iconMessage,
                        color: Colors.black),
                    title: 'Email',
                  ),
                  SizedBox(height: 20.w),
                  InputWidget(
                    iconLeft:
                        Image.asset(AssetHelper.iconLock, color: Colors.black),
                    title: 'Password',
                  ),
                  SizedBox(height: 10.w),
                  Row(
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      SizedBox(
                        width: 300,
                        child: Text(
                          'By continuing you accept our Privacy Policy and Term of Use',
                          style: TextStyle(
                              fontSize: 10.sp,
                              color: ColorPalette.gray2,
                              fontFamily: 'Myfont'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 150.w),
                  ButtonWidget(
                    title: 'Register',
                    onTap: () {Navigator.of(context).pushNamed(CompleteScreen.routeName);},
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
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
