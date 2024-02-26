import 'package:bmi_calculator_app/widget/constants.dart';
import 'package:flutter/material.dart';

class CardBox extends StatelessWidget {
const CardBox({ Key? key, this.borderColor = Colors.transparent, required this.child }) : super(key: key);

final Color borderColor;
final Widget child;

  @override
  Widget build(BuildContext context){
    return Container(
      height: 190,
      decoration: BoxDecoration(
        color: kActiveCardColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: borderColor)
      ),
      child: child,
    );
  }
}