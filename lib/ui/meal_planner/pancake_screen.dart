import 'package:fitness_ui_ticket/constants/dimentions/color_palette.dart';
import 'package:fitness_ui_ticket/constants/helper/asset_helper.dart';
import 'package:fitness_ui_ticket/widget/button_widget.dart';
import 'package:fitness_ui_ticket/widget/dotline_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PancakeScreen extends StatefulWidget {
  const PancakeScreen({super.key});

  static String routeName = 'pancake_screen';

  @override
  State<PancakeScreen> createState() => _PancakeScreenState();
}

class _PancakeScreenState extends State<PancakeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Center(
          child: Container(
            height: 30.w,
            width: 30.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.w),
                color: ColorPalette.white),
            child: Image.asset(AssetHelper.iconBackAppbar),
          ),
        ),
        actions: [
          Center(
            child: Container(
              height: 30.w,
              width: 30.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.w),
                  color: ColorPalette.white),
              child: Image.asset(AssetHelper.iconAppbarRight),
            ),
          ),
          SizedBox(
            width: 10.w,
          )
        ],
        flexibleSpace: Container(
            decoration: BoxDecoration(gradient: Gradients.blueLinear)),
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: double.infinity,
            decoration: BoxDecoration(gradient: Gradients.blueLinear),
            child: Image.asset(
              AssetHelper.pancake,
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.6,
            maxChildSize: 1,
            minChildSize: 0.6,
            builder: (BuildContext contex, ScrollController scrollController) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                decoration: BoxDecoration(
                  color: ColorPalette.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.w),
                    topRight: Radius.circular(40.w),
                  ),
                ),
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(top: 15.w),
                          child: Container(
                            height: 5,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.all(Radius.circular(50.w)),
                              color: Colors.black,
                            ),
                          ),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                          title: Text('Blueberry Pancake',
                              style: TextStyle(
                                  fontFamily: 'MyfontMedium',
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700)),
                          subtitle: RichText(
                            text: TextSpan(
                              text: 'by ',
                              style: TextStyle(fontSize: 12.sp,fontFamily: 'Myfont',fontWeight: FontWeight.w500,color: ColorPalette.gray1),
                              children:  <TextSpan>[
                                TextSpan(text: 'James Ruth', style: TextStyle(color: Color(0xFF92A3FD),fontFamily: 'Myfont',fontSize: 12.sp,fontWeight: FontWeight.w500)),
                              ],
                            ),
                          ),
                          trailing: Image.asset(AssetHelper.iconHeart,height: 16,color: Colors.red,),
                        ),
                        SizedBox(height: 10.w),
                        Text('Nutrition',
                            style: TextStyle(
                                fontFamily: 'MyfontMedium',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: ColorPalette.black)),
                        SizedBox(height: 20.w),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              nutrition(AssetHelper.calories, '180kCal'),
                              SizedBox(width: 20.w),
                              nutrition(AssetHelper.nutrition2, '30g fats'),
                              SizedBox(width: 20.w),
                              nutrition(AssetHelper.nutrition3, '20g proteins'),
                              SizedBox(width: 20.w),
                              nutrition(AssetHelper.nutrition4, '50g carbo'),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.w),
                        Text('Descriptions',
                            style: TextStyle(
                                fontFamily: 'MyfontMedium',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: ColorPalette.black)),
                        SizedBox(height: 20.w),
                        RichText(
                          text: TextSpan(
                            text:
                            'Pancakes are some people\'s favorite breakfast, who doesn\'t like pancakes? Especially with the real honey splash on top of the pancakes, of course everyone loves that! besides being',
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
                            Text('Ingredients That You \nWill Need',
                                style: TextStyle(
                                    fontFamily: 'MyfontMedium',
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    color: ColorPalette.black)),
                            Spacer(),
                            Text(
                              '6 items',
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Myfont',
                                  color: ColorPalette.gray2),
                            )
                          ],
                        ),
                        SizedBox(height: 20.w),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ingredients(AssetHelper.ingredient1, 'Wheat Flour', '100gr'),
                              SizedBox(width: 10.w),
                              ingredients(AssetHelper.ingredient2, 'Sugar', '3 tbsp'),
                              SizedBox(width: 10.w),
                              ingredients(AssetHelper.ingredient3, 'Baking Soda', '2 tsp'),
                              SizedBox(width: 10.w),
                              ingredients(AssetHelper.ingredient4, 'Eggs', '2 items'),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.w),
                        Row(
                          children: [
                            Text('Step by Step',
                                style: TextStyle(
                                    fontFamily: 'MyfontMedium',
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    color: ColorPalette.black)),
                            Spacer(),
                            Text(
                              '8 Steps',
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Myfont',
                                  color: ColorPalette.gray2),
                            )
                          ],
                        ),
                        SizedBox(height: 20.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            step('01 ',true,'Step 1','Prepare all of the ingredients that needed'),
                            step('02',false,'Step 2','Mix flour, sugar, salt, and baking powder'),
                            step('03',false,'Step 3','In a seperate place, mix the eggs and\nliquid milk until blended'),
                            step('04',false,'Step 4','Put the egg and milk mixture into the \ndry ingredients, Stir untul smooth and smooth'),
                            step('05',false,'Step 5','Prepare all of the ingredients that needed')
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
          Positioned(
              bottom: 30,
              right: 30,
              left: 30,
              child: ButtonWidget(title: 'Star Workout', )
          )
        ],
      ),
    );
  }
  Widget nutrition (String image,String text){
    return Container(
      height: 40.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.w),
        gradient: Gradients.blueLinearOpacity,
      ),
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Row(
        children: [
          Image.asset(image),
          SizedBox(width: 10.w),
          Text(text,style: TextStyle(fontFamily: 'Myfont',fontSize: 10.sp,fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
  Widget ingredients (String image,String title , String subtitle) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
            child: Container(
              height: 80.w,
              width: 80.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.w),
                  color: ColorPalette.gray3,
                  boxShadow: [
                    BoxShadow(
                        color: ColorPalette.borderColor,
                        blurRadius: 15.w,
                        spreadRadius: 10.w)
                  ]
              ),
              child: Image.asset(image)
            ),
        ),
        SizedBox(height: 10.w),
        Text(title,style: TextStyle(fontSize: 12.sp,fontFamily: 'Myfont',fontWeight: FontWeight.w500)),
        Text(subtitle,style: TextStyle(fontSize: 10.sp,fontFamily: 'Myfont',fontWeight: FontWeight.w500,color: ColorPalette.gray1)),
      ],
    );
  }
  Widget step (String text1 , bool? highlightstep , String text2,String text3) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text1,style:  TextStyle(color: highlightstep == true ? Color(0xFFC58BF2): ColorPalette.gray2,fontFamily: 'Myfont',fontSize: 12.sp)),
        SizedBox(width: 10.w),
        Column(
          children: [
            Image.asset(highlightstep == true ? AssetHelper.dotColor : AssetHelper.dotOutline),
            SizedBox(height: 5.w),
            SizedBox(height: 50.w,child: highlightstep == true ? DotlineWidget() : DotlineWidget(highlight: false)),
          ],
        ),
        SizedBox(width: 10.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text2,style: TextStyle(fontSize: 14.sp,fontFamily: 'Myfont',fontWeight: FontWeight.w500)),
            Text(text3,style: TextStyle(fontWeight: FontWeight.w500,fontFamily: 'Myfont',fontSize: 10.sp,color: ColorPalette.gray1),)
          ],
        )
      ],
    );

  }
}
