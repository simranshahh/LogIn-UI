// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final String text;
  VoidCallback press;

  // ignore: use_key_in_widget_constructors
  Button({
    required this.text,
    required this.press,
  });

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 140,
      color: Colors.white,
      // ignore: deprecated_member_use
      child: RaisedButton(
        onPressed: widget.press,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        //color: Colors.blue,
      ),
    );
  }
}
