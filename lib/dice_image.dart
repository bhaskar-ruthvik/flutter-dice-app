import 'package:flutter/material.dart';
import 'package:dice_app/custom_text.dart';
import 'dart:math';
class DiceImage extends StatefulWidget{
  DiceImage({super.key});
  @override
  State<DiceImage> createState(){
    return _DiceState();
  }
}

class _DiceState extends State<DiceImage>{
  final randomizer = Random();
  String finalDiceString  = 'assets/images/dice-1.png';
  void rollDice(){
    int num = randomizer.nextInt(6)+1;
    setState(() {
      finalDiceString = 'assets/images/dice-$num.png';
    });
    

  }
  @override 
  Widget build(context){
    return Column(
              mainAxisSize: MainAxisSize.min,
              children: [Image(
              image: AssetImage(finalDiceString),
              width: 200,
            ),TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(top: 10.0),
              ),
              onPressed: rollDice,
              child: const CustomText('Roll dice'),)]
          );
  }
}