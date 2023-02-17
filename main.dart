import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dice'),
        ),
        body: Row(
          children: const <Widget>[
            Expanded(
              child: Image(
                image: AssetImage('images/dice1.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
