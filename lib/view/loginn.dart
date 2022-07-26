// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:loginn/view/register.dart';

import '../widgets/Button.dart';

class First extends StatefulWidget {
  First({Key? key}) : super(key: key);

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
          ),
          Container(
              height: 350,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                //color: Colors.red,
                image: DecorationImage(
                  image: NetworkImage(
                      'https://media.istockphoto.com/vectors/business-hr-concept-human-resources-manager-hiring-employee-for-job-vector-id1138372470?k=20&m=1138372470&s=612x612&w=0&h=u814B5FV5Tn84P0W4p4OqkDcmEof3ZvTCb_TqHSzUr0='),
                  fit: BoxFit.fill,
                ),
              )),
          SizedBox(
            height: 70,
          ),
          Text(
            '   Discover Your \n Dream Job Here',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 30),
          Text(
            'Explore all the most exciting jobs roles \n based on your interest And study major!',
            style: TextStyle(color: Color.fromARGB(255, 98, 96, 96)),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(55, 55, 0, 0),
            child: Row(
              children: [
                Button(
                  text: 'Login',
                  press: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => Register()));
                  },
                ),

                //     Navigator.of(context).pushReplacement(
                // MaterialPageRoute(builder: (BuildContext context) => register())),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Button(
                    text: 'Sign In',
                    press: () {},
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
