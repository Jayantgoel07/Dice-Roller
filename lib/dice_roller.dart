import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/widgets.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: rollDice,
          child: Image.asset(
            'assets/images/dice-$currentDiceRoll.png',
            width: 200,
          ),
        ),
        // const SizedBox(height: 20),
        // OutlinedButton(
        //     onPressed: rollDice,
        //     style: TextButton.styleFrom(
        //         // padding: const EdgeInsets.only(top: 20),
        //         foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        //         backgroundColor: Colors.black,
        //         textStyle: const TextStyle(fontSize: 28)),
        //     child: const Text('Roll Dice'))
      ],
    );
  }
}
