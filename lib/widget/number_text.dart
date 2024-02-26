import 'package:flutter/material.dart';

class NumberText extends StatelessWidget {
const NumberText({ Key? key, required this.text }) : super(key: key);

final String text;

  @override
  Widget build(BuildContext context){
    return Text(
      text,
      style: const TextStyle(
        fontSize: 48,
        fontWeight: FontWeight.w900,
        color: Colors.white,
      ),
    );
  }
}