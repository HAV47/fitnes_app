import 'package:fitness_ui_ticket/constants/dimentions/color_palette.dart';
import 'package:fitness_ui_ticket/constants/helper/asset_helper.dart';
import 'package:fitness_ui_ticket/widget/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResultStaticScreen extends StatefulWidget {
  const ResultStaticScreen({super.key});
static String routeName = 'result_static_screen';
  @override
  State<ResultStaticScreen> createState() => _ResultStaticScreenState();
}

class _ResultStaticScreenState extends State<ResultStaticScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Progress Photo',
            style: TextStyle(
                fontFamily: 'MyfontBold',
                fontSize: 16.sp,
                fontWeight: FontWeight.w700)),
        leading: Image.asset(AssetHelper.iconX, scale: 0.8),
        actions: [
          Image.asset(
            AssetHelper.iconShare,
            scale: 2,
          ),
          SizedBox(width: 10.w),
          Image.asset(AssetHelper.iconAppbarRight),
          SizedBox(width: 10.w)
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 20.w),
            Container(
              height: 60.w,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.w),
                color: ColorPalette.borderColor,
              ),
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Row(
                children: [
                  Container(
                    height: 40.w,
                    width: 130.w,
                    decoration: BoxDecoration(
                      color: ColorPalette.borderColor,
                        borderRadius: BorderRadius.circular(100.w)),
                    child: Center(
                        child: Text('Photo',style: TextStyle(color: ColorPalette.gray2, fontSize: 16.sp, fontWeight: FontWeight.w600, fontFamily: 'Myfont'))),
                  ),
                  Spacer(),
                  Container(
                    height: 40.w,
                    width: 130.w,
                    decoration: BoxDecoration(
                      gradient: Gradients.blueLinear,
                        borderRadius: BorderRadius.circular(100.w)),
                    child: Center(
                        child: Text('Statistic',style: TextStyle(color: ColorPalette.white, fontSize: 16.sp, fontWeight: FontWeight.w500, fontFamily: 'Myfont'))),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.w),
            SizedBox(
              width: double.infinity,
              child: Image.asset(AssetHelper.r9,fit: BoxFit.cover),
            ),
            SizedBox(height: 20.w),
            Row(
              children: [
                Text('May',
                    style: TextStyle(
                        fontFamily: 'Myfont',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: ColorPalette.gray1)),
                Spacer(),
                Text(
                  'June',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Myfont',
                      color: ColorPalette.gray1),
                )
              ],
            ),
            SizedBox(height: 10.w),
            list('Lose Weight', '33%', AssetHelper.r10, '67%'),
            SizedBox(height: 10.w),
            list('Height Increase', '88%', AssetHelper.r11, '12%'),
            SizedBox(height: 10.w),
            list('Muscle Mass Increase', '57%', AssetHelper.r12, '43%'),
            SizedBox(height: 10.w),
            list('Abs', '89%', AssetHelper.r13, '11%'),
            Spacer(),
            ButtonWidget(title: 'Back to Home')
          ],
        ),
      ),

    );
  }
  Widget list (String text,String text2, String image,String text3){
    return Column(
      children: [
        Text(text,style: TextStyle(fontSize: 14.sp,fontFamily: 'Myfont',fontWeight: FontWeight.w500,color: ColorPalette.black)),
        SizedBox(height: 10.w),
        SizedBox(
          width: double.infinity,
          child: Row(
            children: [
              Text(text2,style: TextStyle(color: ColorPalette.gray1,fontFamily: 'Myfont',fontSize: 12.sp,fontWeight: FontWeight.w500),),
              Spacer(),
              Image.asset(image,fit: BoxFit.cover,),
              Spacer(),
              Text(text3,style: TextStyle(color: ColorPalette.gray1,fontFamily: 'Myfont',fontSize: 12.sp,fontWeight: FontWeight.w500),)
            ],
          ),
        )
      ],
    );
  }
}
