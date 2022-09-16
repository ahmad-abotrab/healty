// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:health/constant.dart';
import 'package:health/screen/home/diet_screen.dart';

import 'package:health/widget/exercise.dart';

class ExerciseScreen extends StatefulWidget {
  const ExerciseScreen({Key? key}) : super(key: key);

  @override
  State<ExerciseScreen> createState() => _ExerciseScreenState();
}

class _ExerciseScreenState extends State<ExerciseScreen> {
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Exercise()));
                    },
                    child: Text(
                      ' Push Ups',
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Exercise()));
                    },
                    child: Text(
                      ' Side Jump',
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Exercise()));
                    },
                    child: Text(
                      ' Plank',
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Exercise()));
                    },
                    child: Text(
                      ' Squats',
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DietScreen()));
              },
              child: Text(
                ' Complete',
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
