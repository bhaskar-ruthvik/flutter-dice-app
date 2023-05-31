import 'package:flutter/material.dart';

class CustomText extends StatelessWidget{
  final String text;
  const CustomText(this.text,{super.key});

  @override
  Widget build(context){
    return Text(
              text,
              style: const TextStyle(color: Colors.white,
              fontSize: 32),
            );
  }
}