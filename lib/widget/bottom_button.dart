import 'package:bmi_calculator_app/widget/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
const BottomButton({ Key? key, required this.onTap, required this.title }) : super(key: key);

final Function() onTap;
final String title;

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kBottomContainerColor,
        ),
        margin: EdgeInsets.only(top: 10.0),
        child: Center(
          child: Text(
            title,
            style: kLargeButtonSTyle,
          ),
        )
      )
    );
  }
}