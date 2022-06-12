import 'dart:async';

import 'package:doorstep/constant/colorconstant.dart';
import 'package:doorstep/auth/loginpage.dart';
import 'package:doorstep/home/home.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _token();
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => token == "" ? LoginPage() : HomePage(),
        ),
      );
    });
  }

  String token = "";

  void _token() async {
    SharedPreferences _tokendata = await SharedPreferences.getInstance();
    String? mainToken = _tokendata.getString('token');
    setState(() {
      token = mainToken!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Image.asset('assets/images/logo2.png'),
      ),
    );
  }
}
