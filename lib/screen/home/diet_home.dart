// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:health/constant.dart';
import 'package:health/widget/food.dart';

class DietHomeScreen extends StatefulWidget {
  const DietHomeScreen({Key? key}) : super(key: key);

  @override
  State<DietHomeScreen> createState() => _DietHomeScreenState();
}

class _DietHomeScreenState extends State<DietHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 0,
        title: Text('Diet'),
        centerTitle: true,
      ),
      backgroundColor: BackgroundColor,
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FoodScreen()));
                    },
                    child: Text(
                      ' BreakFast',
                      style: TextStyle(
                        color: Colors.teal,
                        fontFamily: 'Combo',
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FoodScreen()));
                    },
                    child: Text(
                      ' Lunch',
                      style: TextStyle(
                        color: Colors.teal,
                        fontFamily: 'Combo',
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FoodScreen()));
                    },
                    child: Text(
                      ' Dinner',
                      style: TextStyle(
                        color: Colors.teal,
                        fontFamily: 'Combo',
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 100,
            width: 100,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: FlatButton(
              color: Colors.teal,
              padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 22),
              onPressed: () {
                // Navigator.push(
                //  context,
                //MaterialPageRoute(
                // builder: (context) => const DietScreen()));
              },
              child: Text(
                ' Done',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Combo',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
