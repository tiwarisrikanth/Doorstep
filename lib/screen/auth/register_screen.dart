import 'package:doorstep/screen/auth/login_screen.dart';
import 'package:doorstep/screen/constant/color_const.dart';
import 'package:doorstep/screen/home/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _passState = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //https://assets7.lottiefiles.com/packages/lf20_yqyt4zdn.json
            children: [
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: Center(
                    child: Lottie.asset(
                      'assets/animation/register_lottie.json',
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Register",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'MonS',
                    fontSize: 25,
                  ),
                ),
              ),

              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Welcome to DoorStep',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'MonR',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    // textAlign: TextAlign.left,
                  ),
                ),
              ),
              //Form
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Email',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'RobotoMedium',
                    fontSize: 18,
                  ),
                  // textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 5,
                child: TextField(
                  cursorColor: const Color(0xFF0C0733).withOpacity(0.7),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.person,
                      color: Color(0xFF0C0733),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.6,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                    ),
                    hintText: 'Enter Name',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontFamily: 'RobotoRegular',
                      fontSize: 15,
                    ),
                    labelStyle: const TextStyle(
                      color: Colors.black,
                      fontFamily: 'RobotoRegular',
                      fontSize: 16,
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Mobile NUmber',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'RobotoMedium',
                    fontSize: 18,
                  ),
                  // textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 5,
                child: TextField(
                  // obscureText: _passState == false ? false : true,
                  obscuringCharacter: '*',
                  cursorColor: const Color(0xFF0C0733).withOpacity(0.7),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.phone,
                      color: Color(0xFF0C0733),
                    ),
                    // suffixIcon: IconButton(
                    //   onPressed: () {
                    //     setState(() {
                    //       _passState = !_passState;
                    //     });
                    //   },
                    //   icon: _passState == false
                    //       ? Icon(
                    //           Icons.visibility_off_outlined,
                    //           color: const Color(0xFF0C0733).withOpacity(0.7),
                    //         )
                    //       : Icon(
                    //           Icons.visibility,
                    //           color: const Color(0xFF0C0733).withOpacity(0.7),
                    //         ),
                    // ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.6,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                    ),
                    hintText: 'Enter Mobile Number',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontFamily: 'RobotoRegular',
                      fontSize: 15,
                    ),
                    labelStyle: const TextStyle(
                      color: Colors.black,
                      fontFamily: 'RobotoRegular',
                      fontSize: 16,
                    ),
                  ),
                  keyboardType: TextInputType.text,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Email',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'RobotoMedium',
                    fontSize: 18,
                  ),
                  // textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 5,
                child: TextField(
                  cursorColor: const Color(0xFF0C0733).withOpacity(0.7),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.email_outlined,
                      color: Color(0xFF0C0733),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.6,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                    ),
                    hintText: 'Enter Email Address',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontFamily: 'RobotoRegular',
                      fontSize: 15,
                    ),
                    labelStyle: const TextStyle(
                      color: Colors.black,
                      fontFamily: 'RobotoRegular',
                      fontSize: 16,
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Password',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'RobotoMedium',
                    fontSize: 18,
                  ),
                  // textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 5,
                child: TextField(
                  obscureText: _passState == false ? false : true,
                  obscuringCharacter: '*',
                  cursorColor: const Color(0xFF0C0733).withOpacity(0.7),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.password_outlined,
                      color: Color(0xFF0C0733),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _passState = !_passState;
                        });
                      },
                      icon: _passState == false
                          ? Icon(
                              Icons.visibility_off_outlined,
                              color: const Color(0xFF0C0733).withOpacity(0.7),
                            )
                          : Icon(
                              Icons.visibility,
                              color: const Color(0xFF0C0733).withOpacity(0.7),
                            ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.6,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                    ),
                    hintText: 'Enter Password',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontFamily: 'RobotoRegular',
                      fontSize: 15,
                    ),
                    labelStyle: const TextStyle(
                      color: Colors.black,
                      fontFamily: 'RobotoRegular',
                      fontSize: 16,
                    ),
                  ),
                  keyboardType: TextInputType.text,
                ),
              ),
              //Submission
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(
                                image:
                                    ExactAssetImage('assets/images/google.png'),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 2,
                            blurRadius: 8,
                          ),
                        ],
                        color: const Color(0xFF0C0733),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => const HomePage(),
                            ),
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Register",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: "MonM",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 70,
                      height: 1,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Or",
                      style: TextStyle(
                          fontFamily: 'MonR', color: Colors.grey, fontSize: 10),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 70,
                      height: 1,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have account?",
                      style: TextStyle(
                        fontFamily: 'MonR',
                        color: Colors.grey.shade600,
                        fontSize: 15,
                      ),
                    ),
                    const Text(
                      " Login",
                      style: TextStyle(
                        fontFamily: 'MonR',
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
