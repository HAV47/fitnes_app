import 'package:fitness_ui_ticket/constants/dimentions/color_palette.dart';
import 'package:fitness_ui_ticket/constants/extention/text_extentions.dart';
import 'package:fitness_ui_ticket/constants/helper/asset_helper.dart';
import 'package:fitness_ui_ticket/ui/login_register/intro_register_screen.dart';
import 'package:fitness_ui_ticket/widget/button_widget.dart';
import 'package:fitness_ui_ticket/widget/input_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CompleteScreen extends StatefulWidget {
  const CompleteScreen({super.key});

  static String routeName = 'complete_screen';

  @override
  State<CompleteScreen> createState() => _CompleteScreenState();
}

class _CompleteScreenState extends State<CompleteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              child: Image.asset(AssetHelper.complete),
            ),
            SizedBox(
              height: 50.w,
            ),
            Center(
              child: Text(
                'Let’s complete your profile',
                style: TextStyless.defaultStyle.fontHeader,
              ),
            ),
            SizedBox(
              height: 5.w,
            ),
            Center(
              child: Text(
                'It will help us to know more about you!',
                style: TextStyle(fontSize: 12, fontFamily: 'Myfont'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.w),
              child: Column(
                children: [
                  SizedBox(height: 20.w),
                  InputWidget(
                    iconLeft: Image.asset(
                      AssetHelper.iconTwoUser,
                      color: ColorPalette.black,
                    ),
                    title: 'Choose Gender',
                    iconRight: Image.asset(
                      AssetHelper.iconDrop,
                      color: ColorPalette.black,
                    ),
                  ),
                  SizedBox(height: 20.w),
                  InputWidget(
                    iconLeft: Image.asset(
                      AssetHelper.iconCalendar,scale: 2,
                      color: ColorPalette.black,
                    ),
                    title: 'Date of Birth',
                  ),
                  SizedBox(height: 20.w),
                  Row(
                    children: [
                      Expanded(
                        child: InputWidget(
                          iconLeft: Image.asset(
                            AssetHelper.iconWeight,
                            color: ColorPalette.black,
                          ),
                          title: 'Your Weight',
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Container(
                        height: 48.w,
                        width: 48.w,
                        decoration: BoxDecoration(
                          gradient: Gradients.purpleLinear,
                          borderRadius: BorderRadius.circular(14.w)
                        ),
                        child: Center(child: Text('KG',style: TextStyle(color: ColorPalette.white),)),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.w),
                  Row(
                    children: [
                      Expanded(
                        child: InputWidget(
                          iconLeft: Image.asset(
                            AssetHelper.iconHeight,
                            color: ColorPalette.black,
                          ),
                          title: 'Your Height',
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Container(
                        height: 48.w,
                        width: 48.w,
                        decoration: BoxDecoration(
                            gradient: Gradients.purpleLinear,
                            borderRadius: BorderRadius.circular(14.w)
                        ),
                        child: Center(child: Text('CM',style: TextStyle(color: ColorPalette.white),)),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.w,),
                  ButtonWidget(title: 'Next >',onTap: (){
                    Navigator.of(context).pushNamed(IntroRegisterScreen.routeName);
                  },)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
