// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:health/constant.dart';
import 'package:health/register.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'screen/home/plan_screen.dart';

class StartupScreen extends StatefulWidget {
  const StartupScreen({Key? key}) : super(key: key);

  @override
  State<StartupScreen> createState() => _StartupScreenState();
}

class _StartupScreenState extends State<StartupScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        Container(
          height: 362,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/sport.png'),
            ),
          ),
        ),
        Expanded(
            child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color.fromARGB(255, 51, 95, 90), Colors.teal],
              begin: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            children: <Widget>[
              Text(
                'Healthy App',
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
                'Welcome to our healthy world',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Combo',
                  color: TextColor,
                ),
              ),
              const Spacer(),
              ClipRRect(
                borderRadius: BorderRadius.circular(40),
                // ignore: deprecated_member_use
                child: FlatButton(
                  color: ButtonColor,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  onPressed: () async {

                    final prefs = await SharedPreferences.getInstance();


      
                    if (prefs.getString('token') == null) {
                      // ignore: use_build_context_synchronously
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Register()));
                    } else {
                 
                      // ignore: use_build_context_synchronously
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PlanScreen()));
                    }
                  },
                  child: const Text(
                    "Get Start",
                    style: TextStyle(
                      fontSize: 23,
                      fontFamily: 'Combo',
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ))
      ]),
    );
  }
}
