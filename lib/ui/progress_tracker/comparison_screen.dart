import 'package:fitness_ui_ticket/constants/dimentions/color_palette.dart';
import 'package:fitness_ui_ticket/constants/helper/asset_helper.dart';
import 'package:fitness_ui_ticket/widget/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ComparisonScreen extends StatefulWidget {
  const ComparisonScreen({super.key});
static String routeName = 'comparison_screen';
  @override
  State<ComparisonScreen> createState() => _ComparisonScreenState();
}

class _ComparisonScreenState extends State<ComparisonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Comparison',
            style: TextStyle(
                fontFamily: 'MyfontBold',
                fontSize: 16.sp,
                fontWeight: FontWeight.w700)),
        leading: Image.asset(AssetHelper.iconX, scale: 0.8),
        actions: [
          Image.asset(AssetHelper.iconAppbarRight),
          SizedBox(width: 10.w)
        ],
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 20.w),
            comparison( 'Select Month 1', 'May'),
            SizedBox(height: 20.w),
            comparison('Select Month 1', 'Select Month'),
            Spacer(),
            ButtonWidget(title: 'Compare')
          ],
        ),
      ),
    );
  }
  Widget comparison (String text1,String text3){
    return Container(
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.w),color: ColorPalette.borderColor),
      child: Center(
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
          leading: Image.asset(AssetHelper.iconCalendar,color: ColorPalette.gray1,scale: 2,),
          title: Text(text1,style: TextStyle(fontFamily: 'Myfont',fontSize: 12.sp,fontWeight: FontWeight.w500)),
          trailing: SizedBox(
            width: 150.w,
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(text3,style: TextStyle(fontFamily: 'Myfont',fontSize: 10.sp,fontWeight: FontWeight.w500,color: ColorPalette.gray2)),
                SizedBox(width: 10.w),
                Image.asset(AssetHelper.add5,height: 20,color: ColorPalette.gray1)
              ],
            ),
          )
        ),
      ),
    );
  }
}
