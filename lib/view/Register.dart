// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:loginn/widgets/Buttonone.dart';

class Register extends StatefulWidget {
  Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Center(
            child: Padding(
          padding: const EdgeInsets.only(top: 58.0),
          child: Text(
            'Hello Again!',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        )),
        Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: Text("Welcome back you've \n       been missed!",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500)),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(55, 38, 55, 0),
          child: TextField(
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white, width: 0.0),
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: 'Enter Username',
              hintStyle: TextStyle(color: Colors.grey),
            ),
            //style: TextStyle(color: Colors.blue),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(55, 20, 55, 0),
          child: TextField(
            decoration: InputDecoration(
              suffixIcon: GestureDetector(
                onTap: (() {
                  _obscureText = !_obscureText;
                }),
                child: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off),
              ),
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: 'Password',
              hintStyle: TextStyle(color: Color.fromARGB(255, 161, 160, 160)),
              //fillColor: Colors.blue),
            ),
            obscureText: _obscureText,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(130.0, 15, 0, 0),
          child: Text(
            'Recovery Password',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 118, 116, 116)),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          height: 50,
          width: 260,
          color: Colors.white,
          // ignore: deprecated_member_use
          child: RaisedButton(
            color: Color(0xfffc6b68),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {},
            child: Center(
              child: Text(
                'Sign In',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            //color: Colors.blue,
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Text(
          'Or continue with',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 117, 116, 116)),
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Buttonone(
                image:
                    'http://cdn-icons-png.flaticon.com/512/2702/2702602.png'),
            Buttonone(
                image: 'http://cdn-icons-png.flaticon.com/512/15/15476.png'),
            Buttonone(
                image: 'http://cdn-icons-png.flaticon.com/512/145/145802.png'),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 105.0, top: 40),
          child: Center(
            child: Row(
              children: [
                Text(
                  'Not a member?',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Text(
                  '  Register Now',
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
