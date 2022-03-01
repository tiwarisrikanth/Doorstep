import 'dart:async';

import 'package:doorstep/auth/changepassword.dart';
import 'package:doorstep/constant/colorconstant.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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

  // @override
  // void dispose() {
  //   errorController.close();

  //   super.dispose();
  // }

  // snackBar Widget
  snackBar(String message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 2),
      ),
    );
  }

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
                  Container(
                    child: Text(
                      'Forgot \nPassword ?',
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
                      'Please Enter your registered email address we will be sending you an email with OTP',
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 15.0,
                        fontFamily: 'MonR',
                      ),
                    ),
                  ),
                  Center(
                    child: Lottie.asset(
                      'assets/animation/forgotpassword.json',
                      height: 200,
                      width: 200,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
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
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text(
                              'Get Back to login.',
                              style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontFamily: 'MonR'),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2,
                          child: InkWell(
                            onTap: () {
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
                            child: Material(
                              borderRadius: BorderRadius.circular(5.0),
                              shadowColor: primaryColor,
                              color: primaryColor,
                              elevation: 7.0,
                              child: GestureDetector(
                                onTap: () {
                                  showModalBottomSheet<void>(
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Padding(
                                        padding:
                                            MediaQuery.of(context).viewInsets,
                                        child: _bottomSheet(context),
                                      );
                                    },
                                  );
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
              child: _otpSheet()),
        ),
      ),
    );
  }

  Widget _otpSheet() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  "Verify it's you..",
                  style: TextStyle(
                    fontSize: 20.0,
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
                  'Please Enter the OTP we have sent to your email address',
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 15.0,
                    fontFamily: 'MonR',
                  ),
                ),
              ),
              Center(
                child: Lottie.asset(
                  'assets/animation/otp.json',
                  height: 150,
                  width: 150,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 18.0, right: 18.0, top: 20),
                child: PinCodeTextField(
                  appContext: context,
                  pastedTextStyle: TextStyle(
                    color: primaryColor.withOpacity(0.3),
                    fontWeight: FontWeight.bold,
                  ),
                  length: 6,
                  // obscureText: true,
                  // obscuringCharacter: '*',
                  // obscuringWidget: FlutterLogo(
                  //   size: 24,
                  // ),
                  blinkWhenObscuring: true,
                  animationType: AnimationType.fade,
                  validator: (v) {
                    if (v!.length < 3) {
                      return "I'm from validator";
                    } else {
                      return null;
                    }
                  },
                  pinTheme: PinTheme(
                    activeColor: Colors.white,
                    selectedFillColor: Colors.white,
                    inactiveFillColor: Colors.white,
                    shape: PinCodeFieldShape.circle,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 50,
                    fieldWidth: 40,
                    activeFillColor: Colors.white,
                  ),
                  cursorColor: Colors.black,
                  animationDuration: Duration(milliseconds: 300),
                  enableActiveFill: true,
                  errorAnimationController: errorController,
                  controller: textEditingController,
                  keyboardType: TextInputType.number,
                  boxShadows: const [
                    BoxShadow(
                      offset: Offset(0, 1),
                      color: Colors.black12,
                      blurRadius: 10,
                    )
                  ],
                  onCompleted: (v) {
                    print("Completed");
                  },
                  // onTap: () {
                  //   print("Pressed");
                  // },
                  onChanged: (value) {
                    print(value);
                    // setState(() {
                    //   currentText = value;
                    // });
                  },
                  beforeTextPaste: (text) {
                    print("Allowing to paste $text");
                    //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                    //but you can show anything you want here, like your pop up saying wrong paste format or etc
                    return true;
                  },
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: MediaQuery.of(context).size.width / 3,
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => ChangePassword()));
                      print("Clicked");
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
                      shadowColor: primaryColor,
                      color: primaryColor,
                      elevation: 7.0,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => ChangePassword()));
                          print("CLicked");
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
                              'Verify me',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'MonR'),
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
        ),
      ),
    );
  }
}
