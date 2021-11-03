import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Magic Ball'),
          backgroundColor: Colors.blue.shade400,
        ),
        body: MagicBalls(),
      ),
    ),
  );
}

class MagicBalls extends StatefulWidget {
  const MagicBalls({Key? key}) : super(key: key);

  @override
  _MagicBallsState createState() => _MagicBallsState();
}

class _MagicBallsState extends State<MagicBalls> {
  int randomNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    randomNumber = Random().nextInt(5) + 1;
                  });
                },
                child: Image.asset('images/ball$randomNumber.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
