import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        //backgroundColor: Colors.purple, 
        body: GradientContainer(Colors.deepPurple, Colors.deepOrange),
      ),
    ),
  ); /* we are passing material app widget to make it displayed on screen  */
}


 