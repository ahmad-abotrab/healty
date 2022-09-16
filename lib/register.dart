// ignore_for_file: prefer_const_constructors, duplicate_ignore, deprecated_member_use, non_constant_identifier_names

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:health/localStorage/constant.dart';
import 'package:health/screen/home/plan_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '/localStorage/store_temp.dart';
import 'package:http/http.dart' as http;
import '../../constant.dart';
import 'package:sizer/sizer.dart';

import 'screen/home/create_account.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                SizedBox(height: 30),
                // ignore: prefer_const_constructors
                Padding(
                  padding: EdgeInsets.only(left: 9.w),
                  child: Text(
                    'Login',
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Combo',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    controller: _emailcontroller,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      hintText: 'Email',
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    controller: _passwordcontroller,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      hintText: 'Password',
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
                SizedBox(
                  height: 6.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: FlatButton(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32, vertical: 12),
                    onPressed: loginButton,
                    child: Container(
                      height: 8.h,
                      width: 60.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 5.h),
                TextButton(
                    onPressed: createAccount,
                    child: Text(
                      'create new account',
                      style: TextStyle(
                        color: Colors.teal,
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  loginButton() async {
    StoreTemp.person!.email = _emailcontroller.text;
    StoreTemp.person!.password = _passwordcontroller.text;
    var email = StoreTemp.person!.email;
    var pass = StoreTemp.person!.password;
    try {
      final url = Uri.parse(UrlsString.baseUrl + UrlsString.login);

      final response =
          await http.post(url, body: {"email": email, "password": pass});
      final result = jsonDecode(response.body);

      if (response.statusCode == 200) {
        if (!result['status']) {
          final pref = await SharedPreferences.getInstance();
          pref.setString('token', result['token']);
          // ignore: use_build_context_synchronously
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (_) => PlanScreen()),
              (route) => false);
        } else {
          showDialog(
              context: context,
              builder: (_) => const AlertDialog(
                    title: Text('Warning'),
                    content: Text('user name or password isn\'t correct'),
                  ));
        }
      } else {
        showDialog(
            context: context,
            builder: (_) => AlertDialog(
                  title: const Text('Warning'),
                  content: Text(response.statusCode.toString()),
                ));
      }
    } catch (e) {
      showDialog(
          context: context,
          builder: (_) => AlertDialog(
                title: const Text('Warning'),
                content: Text(e.toString()),
              ));
    }
  }

  createAccount() {
    StoreTemp.person!.email = _emailcontroller.text;
    StoreTemp.person!.password = _passwordcontroller.text;
    Navigator.push(context, MaterialPageRoute(builder: (_) => CreateAccount()));
  }
}
