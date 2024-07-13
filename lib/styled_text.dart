import 'package:flutter/material.dart';

class StyledText extends StatelessWidget{
  //const StyledText(String text,{super.key}): outputText = text;
  const StyledText(this.text,{super.key});
  //this is used to refer to the object/variable within the class
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: const TextStyle(color: Colors.white, fontSize: 28),);
  }
}