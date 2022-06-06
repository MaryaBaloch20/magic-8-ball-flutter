import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.lightBlue,
          appBar: AppBar(
            title: const Center(
              child: Text(
                'Ask Me Anything',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
          body: AskMeAnything(),
        ),
      ),
    );

class AskMeAnything extends StatefulWidget {
  const AskMeAnything({Key? key}) : super(key: key);

  @override
  State<AskMeAnything> createState() => _AskMeAnythingState();
}

class _AskMeAnythingState extends State<AskMeAnything> {
  int ballNo = 3;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextButton(
              onPressed: () {
                setState(() {
                  ballNo = Random().nextInt(4) + 1;
                });
              },
              child: Image.asset('images/ball$ballNo.png')),
        )),
      ],
    );
  }
}
