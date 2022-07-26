// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Buttonone extends StatefulWidget {
  final String image;

  // ignore: use_key_in_widget_constructors
  Buttonone({
    required this.image,
  });

  @override
  State<Buttonone> createState() => _ButtononeState();
}

class _ButtononeState extends State<Buttonone> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(31, 200, 193, 193),
      ),
      height: 50,
      width: 80,
      // ignore: deprecated_member_use
      child: RaisedButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: [
            Image.network(
              widget.image,
              height: 25,
              width: 55,
            ),
          ],
        ),
      ),
    );
  }
}
