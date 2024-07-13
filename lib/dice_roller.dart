import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget{

  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {//We are trying to manage dice roller state   
    return _DiceRollerState();
  }
}
//Underscore means private class
class _DiceRollerState extends State<DiceRoller>{
  var currentDiceRoll = 2;
  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6)+1;
    }); //available only in State based classes
  }
  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-$currentDiceRoll.png',
              width: 200,
            ),
            const SizedBox(height:20), //can be used instead of padding  and it has fixed size even if content if made inside like widget tree than also it's size won't change
            TextButton(
                onPressed: rollDice,
                style: TextButton.styleFrom(
                    //padding: const EdgeInsets.only(top: 20),
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(fontSize: 28)),
                child: const Text('Roll Dice'))
          ], //we can also use (){ } anonymous functions here...
        );
  }
}