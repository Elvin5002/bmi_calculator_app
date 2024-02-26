import 'package:bmi_calculator_app/widget/constants.dart';
import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
const TitleText({ Key? key, required this.text }) : super(key: key);

final String text;

  @override
  Widget build(BuildContext context){
    return Text(
      text,
      style: kLabelStyle,
    );
  }
}