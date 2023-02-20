import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftDice = 3;
  int rightDice = 3;
  dicePressed() {
    leftDice = Random().nextInt(6) + 1;
    rightDice = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        dicePressed();
                      });
                    },
                    child: Image.asset('images/dice$leftDice.png')),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      dicePressed();
                    });
                  },
                  child: Image.asset('images/dice$rightDice.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
