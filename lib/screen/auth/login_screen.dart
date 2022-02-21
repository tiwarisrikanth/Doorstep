import 'dart:async';

import 'package:doorstep/screen/auth/register_screen.dart';
import 'package:doorstep/screen/constant/color_const.dart';
import 'package:doorstep/screen/home/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:timer_button/timer_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _passState = false;
  TextEditingController textEditingController = TextEditingController();
  // ..text = "123456";

  // ignore: close_sinks
  StreamController<ErrorAnimationType>? errorController;

  bool hasError = false;
  String currentText = "";
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    errorController!.close();

    super.dispose();
  }

  // snackBar Widget
  snackBar(String? message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message!),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 28.0, left: 18.0, right: 18.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //https://assets3.lottiefiles.com/packages/lf20_mragdxra.json
                const Align(
                  alignment: Alignment.topLeft,
                  child: Center(
                    child: Text(
                      'Welcome to DoorStep',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'MonS',
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      // textAlign: TextAlign.left,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Image.asset(
                    'assets/images/delivery_on_time.png',
                  ),
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'MonM',
                      fontSize: 25,
                    ),
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
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: InkWell(
                    onTap: () {
                      //Forgot Email Address
                      showModalBottomSheet<void>(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        context: context,
                        builder: (BuildContext context) {
                          return Padding(
                            padding: MediaQuery.of(context).viewInsets,
                            child: _bottomSheet(context),
                          );
                        },
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'MonR',
                          fontSize: 12,
                        ),
                        // textAlign: TextAlign.left,
                      ),
                    ),
                  ),
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
                                  image: ExactAssetImage(
                                      'assets/images/google.png'),
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
                              "Login",
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
                            fontFamily: 'MonR',
                            color: Colors.grey,
                            fontSize: 10),
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
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const RegisterScreen(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have account?",
                        style: TextStyle(
                          fontFamily: 'MonR',
                          color: Colors.grey.shade600,
                          fontSize: 15,
                        ),
                      ),
                      const Text(
                        " Create One.",
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
      ),
    );
  }

  Widget _bottomSheet(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 10.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              height: MediaQuery.of(context).size.height / 1.9,
              child: _bottomSheetData(context)),
        ),
      ),
    );
  }

  Widget _bottomSheetData(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Text(
              'So you Forgot your Password huh!...?',
              style: TextStyle(
                color: colorDarkBlue,
                fontFamily: 'RobotoMedium',
                fontSize: 20,
              ),
              textAlign: TextAlign.left,
            ),
          ),

          Align(
            alignment: Alignment.center,
            child: Lottie.asset('assets/animation/forgot_password.json',
                height: 200, fit: BoxFit.fill),
          ),
          // SizedBox(
          //   height: 20,
          // ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'No Worries...Please Enter your registered email address...',
              style: TextStyle(
                color: colorDarkBlue,
                fontFamily: 'RobotoMedium',
                fontSize: 15,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          /*
        https://assets4.lottiefiles.com/packages/lf20_lzhwcgzg.json
         */
          Align(
            alignment: Alignment.center,
            child: Text(
              'We will be sending you a Password reset link on the mail',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'RobotoRegular',
                fontSize: 15,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
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
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: TimerButton(
                  buttonType: ButtonType.TextButton,
                  label: "Send Reset Link",
                  timeOutInSeconds: 50,
                  onPressed: () {},
                  disabledColor: Colors.grey,
                  color: colorDarkBlue,
                  disabledTextStyle: new TextStyle(
                    color: Colors.white,
                    fontFamily: 'RobotoRegular',
                    fontSize: 15,
                  ),
                  activeTextStyle: new TextStyle(
                    color: Colors.white,
                    fontFamily: 'RobotoRegular',
                    fontSize: 17,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  //OTP Section

}
