// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:health/constant.dart';

class FoodScreen extends StatefulWidget {
  const FoodScreen({Key? key}) : super(key: key);

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 0,
        title: Text('Food'),
        centerTitle: true,
      ),
      backgroundColor: BackgroundColor,
    );
  }
}
