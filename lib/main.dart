import 'package:doorstep/auth/loginpage.dart';
import 'package:doorstep/splashscreen.dart';
import 'package:flutter/material.dart';

import 'auth/signup.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/signup': (BuildContext context) => SignupPage()
      },
      home: SplashScreen(),
    );
  }
}
