import 'package:bmi_calculator_app/widget/weight_and_age_box.dart';
import 'package:flutter/material.dart';

class WeightAndAgeView extends StatelessWidget {
const WeightAndAgeView({ Key? key, required this.weight, required this.age, required this.onDecWeight, required this.onIncWeight, required this.onDecAge, required this.onIncAge }) : super(key: key);

final int weight;
final int age;
final Function() onDecWeight;
final Function() onIncWeight;
final Function() onDecAge;
final Function() onIncAge;


  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        WeightAndAgeBox(
          text: 'WEIGHT', 
          number: weight, 
          onIncrement: onIncWeight, 
          onDecrement: onDecWeight,
        ),
        const SizedBox(width: 16,),
        WeightAndAgeBox(
          text: 'AGE', 
          number: age, 
          onIncrement: onIncAge,
          onDecrement: onDecAge,
        )
      ],
    );
  }
}