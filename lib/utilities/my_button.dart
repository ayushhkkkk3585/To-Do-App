import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  VoidCallback buttonPressed;
   MyButton({
    super.key,
    required this.text,
    required this.buttonPressed,
    });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: buttonPressed,
      color: Colors.lightBlue[400],
      child: Text(text),
    );
  }
}