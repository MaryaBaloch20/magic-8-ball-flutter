import 'package:flutter/material.dart';

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

class AskMeAnything extends StatelessWidget {
  const AskMeAnything({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Image.asset('images/ball5.png'),
        )),
      ],
    );
  }
}
