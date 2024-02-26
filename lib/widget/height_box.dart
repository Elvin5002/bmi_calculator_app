import 'package:bmi_calculator_app/widget/card_box.dart';
import 'package:bmi_calculator_app/widget/constants.dart';
import 'package:bmi_calculator_app/widget/number_text.dart';
import 'package:bmi_calculator_app/widget/title_text.dart';
import 'package:flutter/material.dart';

class HeightBox extends StatelessWidget {
const HeightBox({ Key? key, required this.height, required this.onSlide }) : super(key: key);

final double height;
final void Function(double) onSlide;

  @override
  Widget build(BuildContext context){
    return CardBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const TitleText(text: 'HEIGHT'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.ideographic,
            children: [
              NumberText(text: height.toStringAsFixed(0)),
              const TitleText(text: 'cm')
            ],
          ),
          SliderTheme(
            data: SliderThemeData(
              thumbColor: kBottomContainerColor,
              activeTrackColor: Colors.white,
              inactiveTrackColor: Colors.grey.shade700,
            ), 
            child: Slider(
              value: height, 
              onChanged: onSlide, 
              min: 120, 
              max: 220, 
            )
          )
        ],
      )
    );
  }
}