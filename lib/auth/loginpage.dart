import 'package:doorstep/constant/colorconstant.dart';
import 'package:doorstep/home/home.dart';
import 'package:flutter/material.dart';

import 'forgotpassword.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool agree = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 10),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text('Hello',
                            style: TextStyle(
                                fontSize: 60.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'MonS')),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            child: Text('There',
                                style: TextStyle(
                                    fontFamily: 'MonM',
                                    fontSize: 40.0,
                                    fontWeight: FontWeight.bold)),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 12,
                            width: 12,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Container(
                      padding: const EdgeInsets.only(
                          top: 35.0, left: 20.0, right: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          TextField(
                            cursorColor: primaryColor,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.email_outlined,
                                color: primaryColor,
                              ),
                              labelText: 'Email',
                              labelStyle: TextStyle(
                                  fontFamily: 'MonM',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: primaryColor,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20.0),
                          TextField(
                            cursorColor: primaryColor,
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.visibility),
                              prefixIcon: Icon(
                                Icons.password,
                                color: primaryColor,
                              ),
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                fontFamily: 'MonM',
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: primaryColor,
                                ),
                              ),
                            ),
                            obscureText: true,
                          ),
                          SizedBox(height: 5.0),
                          Row(
                            children: [
                              Material(
                                child: Checkbox(
                                  activeColor: primaryColor,
                                  value: agree,
                                  onChanged: (value) {
                                    setState(() {
                                      agree = value ?? false;
                                    });
                                  },
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    agree = !agree;
                                  });
                                },
                                child: const Text(
                                  'I have read and accept terms and conditions',
                                  style: TextStyle(color: Colors.grey),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 5.0),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ForgotPassword()));
                            },
                            child: Container(
                              alignment: const Alignment(1.0, 0.0),
                              padding:
                                  const EdgeInsets.only(top: 15.0, left: 20.0),
                              child: InkWell(
                                child: Text(
                                  'Forgot Password',
                                  style: TextStyle(
                                    color: primaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'MonM',
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 40.0),
                          InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(),
                                ),
                              );
                            },
                            child: Container(
                              height: 40.0,
                              child: Material(
                                borderRadius: BorderRadius.circular(20.0),
                                shadowColor: primaryColor,
                                color: primaryColor,
                                elevation: 7.0,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      new MaterialPageRoute(
                                        builder: (context) => HomePage(),
                                      ),
                                    );
                                  },
                                  child: Center(
                                    child: Text(
                                      'LOGIN',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'MonM'),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20.0),
                          Container(
                            height: 40.0,
                            color: Colors.transparent,
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black,
                                      style: BorderStyle.solid,
                                      width: 1.0),
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Center(
                                    child: ImageIcon(
                                        AssetImage('assets/images/google.png')),
                                  ),
                                  SizedBox(width: 10.0),
                                  Center(
                                    child: Text('Log in with Google',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'MonM')),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      )),
                ),
                SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'New to DoorStep ?',
                      style: TextStyle(fontFamily: 'MonM'),
                    ),
                    SizedBox(width: 5.0),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('/signup');
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(
                            color: primaryColor,
                            fontFamily: 'MonM',
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
