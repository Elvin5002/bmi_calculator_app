import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RoundedButton extends StatelessWidget {
const RoundedButton({ Key? key, required this.onTap, required this.icon }) : super(key: key);

final Function() onTap;
final IconData icon;

  @override
  Widget build(BuildContext context){
    return FloatingActionButton(
      onPressed: onTap,
      shape: const CircleBorder(),
      child: FaIcon(icon),
      backgroundColor: const Color(0xff4c4f5e),
      foregroundColor: Colors.white,
      heroTag: null,
    );
  }
}