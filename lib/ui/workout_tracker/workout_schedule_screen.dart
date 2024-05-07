import 'package:fitness_ui_ticket/constants/helper/asset_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WorkoutScheduleScreen extends StatefulWidget {
  const WorkoutScheduleScreen({super.key});
static String routeName = 'workout_schedule_screen';
  @override
  State<WorkoutScheduleScreen> createState() => _WorkoutScheduleScreenState();
}

class _WorkoutScheduleScreenState extends State<WorkoutScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(AssetHelper.iconX, scale: 0.8),
        title: Text('Workout Schedule',style: TextStyle(fontSize: 16.sp,fontFamily: 'MyfontBold',fontWeight: FontWeight.w700)),
        centerTitle: true,
        actions: [
          Image.asset(AssetHelper.iconAppbarRight),
          SizedBox(width: 10.w)
        ],
      ),
    );
  }
}
