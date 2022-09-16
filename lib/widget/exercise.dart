// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:health/constant.dart';

class Exercise extends StatelessWidget {
  const Exercise({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 0,
        title: Text('Plan'),
        centerTitle: true,
      ),
      backgroundColor: BackgroundColor,
      body: Column(
        children: <Widget>[
          Container(
            height: 362,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/push.png'),
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 187, 187, 187), Colors.teal],
                  begin: Alignment.centerRight,
                ),
              ),
              child: Column(
                children: <Widget>[
                  Text(
                    'Duration ',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 32,
                        fontFamily: 'Combo',
                        color: TextColor,
                        fontWeight: FontWeight.w600),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Calories Lost : ',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Combo',
                      color: TextColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
