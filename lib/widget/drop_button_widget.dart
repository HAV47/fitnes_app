import 'package:fitness_ui_ticket/constants/dimentions/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DropButtonWidget extends StatefulWidget {
  const DropButtonWidget({super.key});

  @override
  State<DropButtonWidget> createState() => _DropButtonWidgetState();
}

class _DropButtonWidgetState extends State<DropButtonWidget> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'Weekly';
    var item = [
      '1',
      '2',
      '3'
    ];
    return Material(
      child: Container(
        height: 30.w,
        width: 50.w,
        decoration: BoxDecoration(
            gradient: Gradients.blueLinear,
            borderRadius: BorderRadius.circular(100.w)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: DropdownButton<String>(
            dropdownColor: Color(0xFF9DCEFF),
            value: dropdownValue,
            // icon:
            // const Icon(Icons.keyboard_arrow_down_outlined),
            // style: const TextStyle(
            //   color: ColorPalette.white,
            // ),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: const [
              DropdownMenuItem<String>(
                value: 'Weekly.',
                child: Text('Weekly'),
              ),
              DropdownMenuItem<String>(
                value: 'Daily',
                child: Text('Daily'),
              ),
              DropdownMenuItem<String>(
                value: 'Months',
                child: Text('Months'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
