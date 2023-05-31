import 'package:flutter/material.dart';
import 'package:dice_app/custom_text.dart';
import 'package:flutter/scheduler.dart';
import 'dice_image.dart';
var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;
String finalDiceString = 'assets/images/dice-1.png';
class StylisedContainer extends StatelessWidget{
  final List<Color> colours;
  const StylisedContainer(this.colours,{super.key});

  StylisedContainer.black({super.key}) : colours= const [Color.fromARGB(255,0,0,0),Color.fromARGB(255, 20, 20, 20)];
  @override
  Widget build(context){
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: colours,
              begin: startAlignment,
              end: endAlignment,
            ),
          ),
          child:Center(
            child: DiceImage(),
        ),);
  }
}
