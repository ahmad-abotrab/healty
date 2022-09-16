// ignore_for_file: dead_code, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:health/constant.dart';
import 'package:health/screen/home/diet_home.dart';

class DietScreen extends StatefulWidget {
  const DietScreen({Key? key}) : super(key: key);

  @override
  State<DietScreen> createState() => _DietState();
}

class _DietState extends State<DietScreen> {
  int currentIndex = 0;
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
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.teal.shade200,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),

          // ignore: prefer_const_literals_to_create_immutables
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.sports_bar),
              label: 'Plan',
              backgroundColor: Colors.teal,
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.restaurant),
                label: 'Diet',
                backgroundColor: Colors.teal),
            BottomNavigationBarItem(
                icon: Icon(Icons.people_alt),
                label: 'Share',
                backgroundColor: Colors.teal),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
                backgroundColor: Colors.teal),
          ]),
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
                            builder: (context) => DietHomeScreen()),
                      );
                    },
                    child: Text(
                      ' Day 1',
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
                              builder: (context) => DietHomeScreen()));
                    },
                    child: Text(
                      ' Day 2',
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
                              builder: (context) => DietHomeScreen()));
                    },
                    child: Text(
                      ' Day 3',
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
                              builder: (context) => DietHomeScreen()));
                    },
                    child: Text(
                      ' Day 4',
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
                              builder: (context) => DietHomeScreen()));
                    },
                    child: Text(
                      ' Day 5',
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
                              builder: (context) => DietHomeScreen()));
                    },
                    child: Text(
                      ' Day 6',
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
                              builder: (context) => DietHomeScreen()));
                    },
                    child: Text(
                      ' Day 7',
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
                              builder: (context) => DietHomeScreen()));
                    },
                    child: Text(
                      ' Day 8',
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
                              builder: (context) => DietHomeScreen()));
                    },
                    child: Text(
                      ' Day 9',
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
                              builder: (context) => DietHomeScreen()));
                    },
                    child: Text(
                      ' Day 10',
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
                              builder: (context) => DietHomeScreen()));
                    },
                    child: Text(
                      ' Day 11',
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
                              builder: (context) => DietHomeScreen()));
                    },
                    child: Text(
                      ' Day 12',
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
                              builder: (context) => DietHomeScreen()));
                    },
                    child: Text(
                      ' Day 13',
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
                              builder: (context) => DietHomeScreen()));
                    },
                    child: Text(
                      ' Day 14',
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
                              builder: (context) => DietHomeScreen()));
                    },
                    child: Text(
                      ' Day 15',
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
                              builder: (context) => DietHomeScreen()));
                    },
                    child: Text(
                      ' Day 16',
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
                              builder: (context) => DietHomeScreen()));
                    },
                    child: Text(
                      ' Day 17',
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
                              builder: (context) => DietHomeScreen()));
                    },
                    child: Text(
                      ' Day 18',
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
                              builder: (context) => DietHomeScreen()));
                    },
                    child: Text(
                      ' Day 19',
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
                              builder: (context) => DietHomeScreen()));
                    },
                    child: Text(
                      ' Day 20',
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
                              builder: (context) => DietHomeScreen()));
                    },
                    child: Text(
                      ' Day 21',
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
                              builder: (context) => DietHomeScreen()));
                    },
                    child: Text(
                      ' Day 22',
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
                              builder: (context) => DietHomeScreen()));
                    },
                    child: Text(
                      ' Day 23',
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
                              builder: (context) => DietHomeScreen()));
                    },
                    child: Text(
                      ' Day 24',
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
                              builder: (context) => DietHomeScreen()));
                    },
                    child: Text(
                      ' Day 25',
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
                              builder: (context) => DietHomeScreen()));
                    },
                    child: Text(
                      ' Day 26',
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
                              builder: (context) => DietHomeScreen()));
                    },
                    child: Text(
                      ' Day 27',
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
                              builder: (context) => DietHomeScreen()));
                    },
                    child: Text(
                      ' Day 28',
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
                              builder: (context) => DietHomeScreen()));
                    },
                    child: Text(
                      ' Day 29',
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
                              builder: (context) => DietHomeScreen()));
                    },
                    child: Text(
                      ' Day 30',
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
        ],
      ),
    );
  }
}
