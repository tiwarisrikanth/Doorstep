import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool agree = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                  child: Text(
                    'Signup',
                    style: TextStyle(
                        fontSize: 60.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'MonS'),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Center(
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.green,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.person_outline,
                          color: Colors.green,
                        ),
                        labelText: 'Name ',
                        labelStyle: TextStyle(
                            fontFamily: 'MonM',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green))),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.phone_outlined,
                          color: Colors.green,
                        ),
                        labelText: 'Mobile',
                        labelStyle: TextStyle(
                            fontFamily: 'MonM',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                        // hintText: 'EMAIL',
                        // hintStyle: ,
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green))),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: Colors.green,
                        ),
                        labelText: 'Email',
                        labelStyle: TextStyle(
                            fontFamily: 'MonM',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green))),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.password_outlined,
                          color: Colors.green,
                        ),
                        suffixIcon: Icon(Icons.visibility),
                        labelText: 'Password ',
                        labelStyle: TextStyle(
                            fontFamily: 'MonM',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green))),
                  ),
                  SizedBox(height: 5.0),
                  Row(
                    children: [
                      Material(
                        child: Checkbox(
                          activeColor: Colors.green,
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
                  SizedBox(height: 50.0),
                  Container(
                      height: 40.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: Colors.greenAccent,
                        color: Colors.green,
                        elevation: 7.0,
                        child: GestureDetector(
                          onTap: () {},
                          child: Center(
                            child: Text(
                              'SIGN UP',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat'),
                            ),
                          ),
                        ),
                      )),
                  SizedBox(height: 15.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Already a Doorstep Customer?',
                        style: TextStyle(fontFamily: 'MonM'),
                      ),
                      SizedBox(width: 5.0),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.green,
                              fontFamily: 'MonM',
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline),
                        ),
                      )
                    ],
                  )
                ],
              )),
          // SizedBox(height: 15.0),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: <Widget>[
          //     Text(
          //       'New to Spotify?',
          //       style: TextStyle(
          //         fontFamily: 'Montserrat',
          //       ),
          //     ),
          //     SizedBox(width: 5.0),
          //     InkWell(
          //       child: Text('Register',
          //           style: TextStyle(
          //               color: Colors.green,
          //               fontFamily: 'Montserrat',
          //               fontWeight: FontWeight.bold,
          //               decoration: TextDecoration.underline)),
          //     )
          //   ],
          // )
        ]),
      ),
    ));
  }
}
