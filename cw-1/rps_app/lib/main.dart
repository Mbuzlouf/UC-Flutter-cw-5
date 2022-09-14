import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var num1 = 3;

  var num2 = 3;
  var state = 'Click on PLAY!';
  void play() {
    num1 = Random().nextInt(3) + 1;
    num2 = Random().nextInt(3) + 1;

    if (num1 == 1 && num2 == 3) {
      state = "Anas won!";
    } else if (num2 == 1 && num1 == 3) {
      state = "Mohammed won!";
    } else if (num2 == 1 && num1 == 3) {
      state = "Mohammed won!";
    } else if (num1 == 1 && num2 == 2) {
      state = "Mohammed won!";
    } else if (num2 == 1 && num1 == 2) {
      state = "Anas won!";
    } else if (num2 == 2 && num1 == 3) {
      state = "Anas won!";
    } else if (num1 == 2 && num2 == 3) {
      state = "Mohammed won!";
    } else {
      state = "DRAW!";
    }
    setState(() {});
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: Text(
              'Rock Paper Scissors!',
              style: TextStyle(fontFamily: 'RubikIso'),
            ),
            backgroundColor: Colors.teal[800]),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/images/i_$num1.png',
                          width: 150,
                        ),
                        Container(
                          height: 30,
                        ),
                        Text(
                          "Anas",
                          style: TextStyle(
                              color: Colors.teal[800],
                              fontSize: 20,
                              fontFamily: 'RubikIso'),
                        )
                      ],
                    ),
                    Container(
                      height: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'assets/images/i_$num2.png',
                            width: 150,
                          ),
                          Container(
                            height: 30,
                          ),
                          Text("Mohammed",
                              style: TextStyle(
                                  color: Colors.teal[800],
                                  fontSize: 20,
                                  fontFamily: 'RubikIso'))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                state,
                style: TextStyle(
                    fontSize: 27,
                    color: Colors.teal[800],
                    fontFamily: 'RubikIso'),
              ),
              Container(
                width: 300,
                height: 80,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal[800]),
                  onPressed: () {
                    play();
                  },
                  child: Text(
                    'P L A Y !',
                    style: TextStyle(fontSize: 30, fontFamily: 'RubikIso'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
