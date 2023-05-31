import 'package:flutter/material.dart';
import 'package:dice_app/stylised_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Dice App'),
          ),
          backgroundColor: Colors.black,
        ),
        body: StylisedContainer.black()
        //const StylisedContainer([
               // Color.fromARGB(255, 0, 47, 53),
              //  Color.fromARGB(255, 2, 0, 46)
              //]),
              
      ),
    ),
  );
}
