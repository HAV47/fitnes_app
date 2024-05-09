import 'package:fitness_ui_ticket/constants/dimentions/color_palette.dart';
import 'package:fitness_ui_ticket/constants/helper/asset_helper.dart';
import 'package:fitness_ui_ticket/widget/button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddAlarmScreen extends StatefulWidget {
  const AddAlarmScreen({super.key});
static String routeName = 'add_alarm_screen';
  @override
  State<AddAlarmScreen> createState() => _AddAlarmScreenState();
}

class _AddAlarmScreenState extends State<AddAlarmScreen> {
  bool switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Add Alarm',
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
            addAlarm(AssetHelper.add1,'Bedtime',true,'09:00 PM'),
            SizedBox(height: 20.w),
            addAlarm(AssetHelper.add2, 'Hours of sleep', true , '8hours 30minutes'),
            SizedBox(height: 20.w),
            addAlarm(AssetHelper.add3, 'Repeat', true , 'Mon to Fri'),
            SizedBox(height: 20.w),
            addAlarm(AssetHelper.add4, 'vibrate When Alarm Sound', false , '8hours 30minutes'),
            Spacer(),
            ButtonWidget(title: 'Add',onTap: (){
              Navigator.of(context).pop();
            },)
          ],
        ),
      ),

    );
  }
  Widget addAlarm (String image,String text1,bool highlight,String text3){
    return Container(
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.w),color: ColorPalette.borderColor),
      child: Center(
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
          leading: Image.asset(image,color: ColorPalette.gray1,),
          title: Text(text1,style: TextStyle(fontFamily: 'Myfont',fontSize: 12.sp,fontWeight: FontWeight.w500)),
          trailing: highlight == true ?SizedBox(
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

          ): Transform.scale(
            scale:0.6,
            child: CupertinoSwitch(
              value: switchValue,
              activeColor: Color(0xFFEEA4CE),
              onChanged: (bool? value) {
                setState(() {
                  switchValue = value ?? false;
                });
              },
            ),
          ),

        ),
      ),
    );
  }
}
