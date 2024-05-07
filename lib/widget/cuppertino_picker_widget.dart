import 'package:fitness_ui_ticket/constants/dimentions/color_palette.dart';
import 'package:fitness_ui_ticket/constants/helper/asset_helper.dart';
import 'package:fitness_ui_ticket/constants/model/depetitions_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RepetitonsPicker extends StatefulWidget {
  @override
  _RepetitonsPickerState createState() => _RepetitonsPickerState();
}

class _RepetitonsPickerState extends State<RepetitonsPicker> {
  int _selectedRepetitions = 0;
  final double _kItemExtent = 32;
  final List<DepetitionModel> list = [
    DepetitionModel(image: AssetHelper.calories,
      name : Row(
        children: [
          Text(  '450 Calories Burn ',
            style: TextStyle(fontSize: 10.sp,color: ColorPalette.gray2,fontFamily: 'Myfont')),
          Text( '30', style: TextStyle(fontSize: 24.sp,color: ColorPalette.gray1,fontFamily: 'Myfont')),
          Text(' times',style: TextStyle(fontFamily: 'Myfont',color: ColorPalette.gray2,fontSize: 16.sp)),
        ],
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 100, // Set the height of the picker
            child: CupertinoPicker(
              magnification: 1.22,
              squeeze: 1.2,
              useMagnifier: true,
              itemExtent: _kItemExtent,
              scrollController: FixedExtentScrollController(
                initialItem: _selectedRepetitions,
              ),
              onSelectedItemChanged: (int selectedItem) {
                setState(() {
                  _selectedRepetitions = selectedItem;
                });
              },
              children: List.generate(list.length, (int index) {
                // return Center(child: DepetitionModel(
                //   image: list[index].image,
                //   name: list[index].name
                // ));
                return Center(
                  child: Row(
                    children: [
                      Image.asset(list[index].image,),
                      list[index].name
                    ],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
