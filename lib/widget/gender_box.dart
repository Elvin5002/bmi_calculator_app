import 'package:bmi_calculator_app/widget/card_box.dart';
import 'package:bmi_calculator_app/widget/title_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderBox extends StatelessWidget {
const GenderBox({ Key? key, required this.onSelect, required this.borderColor, required this.icon, required this.title}) : super(key: key);

final Function() onSelect;
final Color borderColor;
final IconData icon;
final String title;

  @override
  Widget build(BuildContext context){
    return Expanded(
      child: GestureDetector(
        onTap: onSelect,
        child: CardBox(
          borderColor: borderColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FaIcon(
                icon,
                size: 80,
                color: Colors.white,
              ),
              const SizedBox(height: 16),
              TitleText(text: title)
            ],
          ),
        ),
      ),
    );
  }
}