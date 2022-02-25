import 'package:doorstep/auth/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Text(
                      'Change \nPassword ?',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'MonS',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Text(
                      'Please Enter your New Password',
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 15.0,
                        fontFamily: 'MonR',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Lottie.asset(
                      'assets/animation/security.json',
                      height: 150,
                      width: 150,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.visibility),
                      prefixIcon: Icon(
                        Icons.password,
                        color: Colors.green,
                      ),
                      labelText: 'New Password',
                      labelStyle: TextStyle(
                          fontFamily: 'MonM',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.visibility),
                      prefixIcon: Icon(
                        Icons.password_outlined,
                        color: Colors.green,
                      ),
                      labelText: 'Change Password',
                      labelStyle: TextStyle(
                          fontFamily: 'MonM',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              new MaterialPageRoute(
                                builder: (context) => LoginPage(),
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text(
                              'Cancel',
                              style: TextStyle(
                                  color: Colors.red[700], fontFamily: 'MonR'),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2,
                          child: InkWell(
                            onTap: () {
                              // showModalBottomSheet<void>(
                              //   isScrollControlled: true,
                              //   backgroundColor: Colors.transparent,
                              //   shape: RoundedRectangleBorder(
                              //     borderRadius: BorderRadius.circular(20),
                              //   ),
                              //   context: context,
                              //   builder: (BuildContext context) {
                              //     return Padding(
                              //       padding: MediaQuery.of(context).viewInsets,
                              //       child: _bottomSheet(context),
                              //     );
                              //   },
                              // );
                            },
                            child: Material(
                              borderRadius: BorderRadius.circular(5.0),
                              shadowColor: Colors.greenAccent,
                              color: Colors.green,
                              elevation: 7.0,
                              child: GestureDetector(
                                onTap: () {
                                  // showModalBottomSheet<void>(
                                  //   isScrollControlled: true,
                                  //   backgroundColor: Colors.transparent,
                                  //   shape: RoundedRectangleBorder(
                                  //     borderRadius: BorderRadius.circular(20),
                                  //   ),
                                  //   context: context,
                                  //   builder: (BuildContext context) {
                                  //     return Padding(
                                  //       padding:
                                  //           MediaQuery.of(context).viewInsets,
                                  //       child: _bottomSheet(context),
                                  //     );
                                  //   },
                                  // );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Center(
                                    child: Text(
                                      'Send OTP',
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
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
