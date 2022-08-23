import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Center(
            child: Text(
          'Ask Me AnyThing',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        ),
      ),
      body: Magic(),
    ),
  ),
  );
}

class Magic extends StatefulWidget {
  const Magic({Key? key}) : super(key: key);

  @override
  State<Magic> createState() => _MagicState();
}

class _MagicState extends State<Magic> {
  int magicballnumber = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextButton(
            onPressed: ()
              {
                setState((){
                  magicballnumber = Random().nextInt(5)+1;
                });
              },
              child: Center(child: Image.asset('images/ball$magicballnumber.png'))),
        ),
      ],
    );
  }
}
