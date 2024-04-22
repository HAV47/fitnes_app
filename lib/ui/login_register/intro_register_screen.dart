import 'package:card_swiper/card_swiper.dart';
import 'package:fitness_ui_ticket/constants/dimentions/color_palette.dart';
import 'package:fitness_ui_ticket/constants/extention/text_extentions.dart';
import 'package:fitness_ui_ticket/constants/helper/asset_helper.dart';
import 'package:fitness_ui_ticket/constants/model/register_model.dart';
import 'package:fitness_ui_ticket/widget/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IntroRegisterScreen extends StatefulWidget {
  const IntroRegisterScreen({super.key});

  static String routeName = 'intro_register_screen';

  @override
  State<IntroRegisterScreen> createState() => _IntroRegisterScreenState();
}

class _IntroRegisterScreenState extends State<IntroRegisterScreen> {
  List<RegisterModel> list = [
    RegisterModel(
        image: AssetHelper.register_1,
        title: 'Improve Shape',
        titleString:
            'I have a low amount of body fat and need / want to build more muscle'),
    RegisterModel(
        image: AssetHelper.register_2,
        title: 'Lean & Tone',
        titleString:
            'I’m “skinny fat”. look thin but have no shape. I want to add learn muscle in the right way'),
    RegisterModel(
        image: AssetHelper.register_3,
        title: 'Lose a Fat',
        titleString:
            'I have over 20 lbs to lose. I want to drop all this fat and gain muscle mass'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'What is your goal ?',
                  style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w700,fontFamily: 'MyfontBold'),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'It will help us to choose a best \n program for you',
                  style: TextStyles.defaultStyle,
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.6,
            // color: Colors.blue,
            child: Swiper(
              viewportFraction: 0.69,
              fade: 0.2,
              scale: 0.6,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      gradient: Gradients.blueLinear,
                      borderRadius: BorderRadius.circular(22.w)),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(height: 20.w),
                      Image.asset(
                        '${list[index].image}',
                      ),
                      SizedBox(height: 20.w),
                      Text('${list[index].title}',
                          style: TextStyless
                              .defaultStyle.fontHeader.bold.whiteTextColor),
                      Text('______________',
                          style: TextStyle(color: Colors.white)),
                      SizedBox(height: 20.w),
                      Text(
                        '${list[index].titleString}',
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: ColorPalette.white,
                            fontFamily: 'Myfont',),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                );
              },
              // itemHeight: 200,
              // itemWidth: 300,
            ),
          ),
          Spacer(),
          SizedBox(
            width: 300.w,
            child: ButtonWidget(title: 'Confirm',onTap: (){
              // Navigator.of(context).pushNamed()
            },),
          )
        ],
      ),
    );
  }
}
