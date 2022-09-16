// ignore_for_file: sort_child_properties_last, duplicate_ignore, deprecated_member_use, avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:health/localStorage/constant.dart';
import 'package:sizer/sizer.dart';
import '/screen/home/plan_screen.dart';
import '/localStorage/store_temp.dart';
import '../../constant.dart';
import 'package:http/http.dart' as http;

import 'localStorage/constant.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  String? gender;
  String? illness;
  late final TextEditingController userName;
  late final TextEditingController age;
  late final TextEditingController _heightController;
  late final TextEditingController _weightController;
  double? _result;
  final formkey = GlobalKey<FormState>();

  @override
  void initState() {
    userName = TextEditingController();
    age = TextEditingController();
    _heightController = TextEditingController();
    _weightController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 0,
      ),
      backgroundColor: BackgroundColor,
      body: Container(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                // ignore: prefer_const_constructors
                Text(
                  'Welcome',
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Combo',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: userName,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    labelText: " Username",
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  ),
                  validator: ((value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[a-z  A-Z]+$').hasMatch(value)) {
                      return " Enter correct name";
                    }
                    return null;
                  }),
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Icon(Icons.person),
                        Expanded(
                          child: Row(
                            children: [
                              Radio(
                                  value: "Male",
                                  groupValue: gender,
                                  onChanged: (value) {
                                    setState(() {
                                      gender = value.toString();
                                    });
                                  }),
                              const Expanded(
                                child: Text('Male'),
                              )
                            ],
                          ),
                          flex: 1,
                        ),
                        Expanded(
                            // ignore: sort_child_properties_last
                            child: Row(
                              children: [
                                Radio(
                                    value: "Female",
                                    groupValue: gender,
                                    onChanged: (value) {
                                      setState(() {
                                        gender = value.toString();
                                      });
                                    }),
                                const Expanded(child: Text('Female'))
                              ],
                            ),
                            flex: 1),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _heightController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.trending_up),
                    labelText: "Height in cm",
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _weightController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.line_weight),
                    labelText: "Weight in kg",
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  ),
                ),
                const SizedBox(height: 18),
                TextFormField(
                  controller: age,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    labelText: "Age",
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  ),
                ),
                const SizedBox(height: 18),
                // ignore: deprecated_member_use
                RaisedButton(
                  color: Colors.teal.shade500,
                  child: const Text(
                    "Calculate",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: calculateBMI,
                ),
                Text(
                  _result == null ? "Enter Value" : "BMI : $_result",
                  style: const TextStyle(
                    color: Colors.teal,
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'Combo',
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(Icons.dangerous),
                    Expanded(
                      child: Row(
                        children: [
                          Radio(
                            value: "Diabetes",
                            groupValue: illness,
                            onChanged: (value) {
                              setState(() {
                                illness = value.toString();
                              });
                            },
                          ),
                          const Expanded(
                            child: Text('Diabetes'),
                          )
                        ],
                      ),
                      flex: 1,
                    ),
                    Expanded(
                      // ignore: sort_child_properties_last
                      child: Row(
                        children: [
                          Radio(
                            value: "Blood pressure",
                            groupValue: illness,
                            onChanged: (value) {
                              setState(() {
                                illness = value.toString();
                              });
                            },
                          ),
                          const Expanded(child: Text('Blood Pressure')),
                        ],
                      ),
                      flex: 1,
                    ),
                    Expanded(
                        // ignore: sort_child_properties_last
                        child: Row(
                          children: [
                            Radio(
                                value: "None",
                                groupValue: illness,
                                onChanged: (value) {
                                  setState(() {
                                    illness = value.toString();
                                  });
                                }),
                            const Expanded(child: Text('None')),
                          ],
                        ),
                        flex: 1),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 60.w,
                    height: 8.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: ButtonColor,
                    ),
                    child: TextButton(
                      onPressed: register,
                      child: const Text(
                        "Register",
                        style: TextStyle(
                          fontSize: 23,
                          fontFamily: 'Combo',
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 3.h,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void calculateBMI() {
    double height = double.parse(_heightController.text) / 100;
    double weight = double.parse(_weightController.text);
    // We dived height by 100 because we are taking the height in centimeter
    // and formula takes height in meter.

    double heightSquare = height * height;
    double result = weight / heightSquare;
    print(result);
    // setState will update the UI
    setState(() {
      _result = result;
    });
  }

  register() async {
    String register = UrlsString.baseUrl + UrlsString.register;
    final url = Uri.parse(register);
    StoreTemp.person!.userName = userName.text;
    StoreTemp.person!.age = age.text;
    StoreTemp.person!.gender = gender;
    StoreTemp.person!.height = _heightController.text;
    StoreTemp.person!.weight = _weightController.text;
    StoreTemp.person!.illness = illness;
    StoreTemp.person!.BMI = _result.toString();
    try {
      final response = await http.post(url, body: StoreTemp.person!.toMap());
      print(response.statusCode);
      print(response.body);
      if (response.statusCode == 200) {
        print("object");
        SharedPreferences pref = await SharedPreferences.getInstance();

        pref.setString("token", jsonDecode(response.body)['token']);
        print("object");
        // ignore: use_build_context_synchronously
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const PlanScreen()),
            (route) => false);
      }
    } catch (e) {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: const Text('Warning'),
          content: Text(e.toString()),
        ),
      );
    }
  }
}
