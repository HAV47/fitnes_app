import 'package:fitness_ui_ticket/constants/dimentions/color_palette.dart';
import 'package:fitness_ui_ticket/constants/helper/asset_helper.dart';
import 'package:fitness_ui_ticket/ui/dashboard/home_screen.dart';
import 'package:fitness_ui_ticket/widget/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CompleteSetupScreen extends StatefulWidget {
  const CompleteSetupScreen({super.key});

  static String routeName = 'complete_setup_screen';

  @override
  State<CompleteSetupScreen> createState() => _CompleteSetupScreenState();
}

class _CompleteSetupScreenState extends State<CompleteSetupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.white,
      appBar: AppBar(
        backgroundColor: ColorPalette.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(AssetHelper.setup),
          ),
          SizedBox(height: 20.w),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'Congratulations, You Have \n Finished Your Workout \n',
              style: TextStyle(
                color: ColorPalette.black,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'MyfontBold',
                  fontSize: 20.sp),
              children: <TextSpan>[
                TextSpan(
                    text:
                        '\nExercises is king and nutrition is queen. Combine the \n two and you will have a kingdom\n',
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: 'Myfont',
                        fontWeight: FontWeight.w400,color: ColorPalette.gray1)),
                TextSpan(
                  text: '-Hoàng Anh Vũ',
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: 'Myfont',
                      fontWeight: FontWeight.w400,color: ColorPalette.gray1)),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: ButtonWidget(title: 'Go To Home',onTap: (){
              Navigator.of(context).pushNamed(HomeScreen.routeName);
            },),
          )
        ],
      ),
    );
  }
}
