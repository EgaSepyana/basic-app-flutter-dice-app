import 'package:flutter/material.dart';
import 'dart:math';

var random = Random();

class DiceState extends StatefulWidget{
  const DiceState({super.key});
  
  @override
  State<DiceState> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceState>{
  var diceNumber = 1;

   @override
   Widget build(context){
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/dice-$diceNumber.png',
            width: 200,
          ),
          const SizedBox(height: 20),
          TextButton(
              onPressed: () => {
                // ignore: avoid_print
                print('Executing Button......'),
                setState(() {
                  diceNumber = random.nextInt(6) + 1;
                })
              },
              style: TextButton.styleFrom(
                  // padding: const EdgeInsets.only(top: 30),
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  )),
              child: const Text("Roll Dice!"))
        ],
      );
   }
}