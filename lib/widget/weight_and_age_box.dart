import 'package:bmi_calculator_app/widget/card_box.dart';
import 'package:bmi_calculator_app/widget/number_text.dart';
import 'package:bmi_calculator_app/widget/rounded_button.dart';
import 'package:bmi_calculator_app/widget/title_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WeightAndAgeBox extends StatelessWidget {
const WeightAndAgeBox({ Key? key, required this.text, required this.number, required this.onIncrement, required this.onDecrement }) : super(key: key);

final String text;
final int number;
final Function() onIncrement;
final Function() onDecrement;


  @override
  Widget build(BuildContext context){
    return Expanded(
      child: CardBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TitleText(text: text),
            NumberText(text: '$number'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RoundedButton(
                  onTap: onDecrement, 
                  icon: FontAwesomeIcons.minus
                ),
                const SizedBox(width: 12,),
                RoundedButton(
                  onTap: onIncrement, 
                  icon: FontAwesomeIcons.plus
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}