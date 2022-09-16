// ignore_for_file: dead_code, prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:health/constant.dart';
import 'package:health/screen/home/diet_screen.dart';
import 'package:health/screen/home/share.dart';

import '../../plan.dart';

class PlanScreen extends StatefulWidget {
  const PlanScreen({Key? key}) : super(key: key);

  @override
  State<PlanScreen> createState() => _PlanState();
}

class _PlanState extends State<PlanScreen> {
  PageController pageController = PageController();
  List<Widget> pages = [Plan(), DietScreen(), Share()];

  int selectindex = 0;
  void onPageChanged(int index) {
    setState(() {
      selectindex = index;
    });
  }

  void onItemTap(int selecteditems) {
    pageController.jumpToPage(selecteditems);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: pages,
        onPageChanged: onPageChanged,
      ),
      backgroundColor: BackgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        onTap: onItemTap,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_bar,
                color: selectindex == 0 ? Colors.teal : Colors.grey),
            label: 'Plan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant,
                color: selectindex == 1 ? Colors.teal : Colors.grey),
            label: 'Diet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt,
                color: selectindex == 2 ? Colors.teal : Colors.grey),
            label: 'Share',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,
                color: selectindex == 3 ? Colors.teal : Colors.grey),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
