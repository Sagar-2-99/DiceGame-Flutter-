import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

Alignment startAlignment = Alignment.topLeft;
Alignment endAlignment = Alignment.bottomRight;

final Sagar = "Hello, world"; //To prevent further changes


class GradientContainer extends StatelessWidget {
  //const GradientContainer({key}): super(key: key);
  //This key is forwarded to StatelessWidget and accepted by GradientContainer
  //extends forces us to add some more class to our current class
  //super call the parent class constructor
 
  //We can also do
  const GradientContainer(this.color1, this.color2,
      {super.key}); //positional arguments are always the required arguments

  final Color color1, color2;
  
  @override
  Widget build(BuildContext context) {
    //This is called by flutter whenever it finds my widget in widget tree
    //context has metadata about this widget in widget tree and where is this tree positioned in overall widget tree
    //btw this is not a constructor function
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: startAlignment,
        end: endAlignment,
        colors: [color1, color2],
      )),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}

/*Another way


class GradientContainer extends StatelessWidget{
  //const GradientContainer({key}): super(key: key); 
  //This key is forwarded to StatelessWidget and accepted by GradientContainer
  //extends forces us to add some more class to our current class
  //super call the parent class constructor

  //We can also do 
  GradientContainer({super.key, required this.colors}); //require is used because when you want optinal named argument as neessary argument....
  //named argument is optinal argument...
  final List<Color> colors; //Final list can be mutated further
  @override 
  Widget build(BuildContext context) { //This is called by flutter whenever it finds my widget in widget tree
  //context has metadata about this widget in widget tree and where is this tree positioned in overall widget tree
  //btw this is not a constructor function
    return  Container(
          decoration: BoxDecoration(gradient: LinearGradient(
            begin: startAlignment,
            end: endAlignment,
            colors: colors,
          )),
          child: const Center(
            child: StyledText('Hello World!')
          ), 
        );
  }

}

*/
