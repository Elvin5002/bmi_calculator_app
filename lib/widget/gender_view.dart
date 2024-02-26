import 'package:bmi_calculator_app/widget/constants.dart';
import 'package:bmi_calculator_app/widget/gender_box.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderView extends StatefulWidget {
  const GenderView({ Key? key }) : super(key: key);

  @override
  _GenderViewState createState() => _GenderViewState();
}

class _GenderViewState extends State<GenderView> {
  late Color maleBorderColor = Colors.transparent;
  late Color femaleBorderColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GenderBox(
          onSelect: (){
            maleBorderColor = kBottomContainerColor;
            femaleBorderColor = Colors.transparent;
            setState(() {});
          }, 
          borderColor: maleBorderColor, 
          icon: FontAwesomeIcons.mars, 
          title: 'MALE',
        ),
        const SizedBox(width: 16,),
        GenderBox(
          onSelect: (){
            femaleBorderColor = kBottomContainerColor;
            maleBorderColor = Colors.transparent;
            setState(() {});
          }, 
          borderColor: femaleBorderColor, 
          icon: FontAwesomeIcons.venus, 
          title: 'FEMALE'
        )
      ],
    );
  }
}