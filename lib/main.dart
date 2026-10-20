import 'dart:math';

import 'package:first_app/basics/dice.dart';
import 'package:flutter/material.dart';

import 'basics/styled_text.dart';

final randomizer = Random();

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Dice("assets/images/dice-$currentDiceRoll.png"),
              TextButton(
                onPressed: rollDice,
                style: TextButton.styleFrom(
                  padding: EdgeInsets.all(20),
                  foregroundColor: Colors.purple,
                ),
                child: StyledText("Roll Dice", Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
