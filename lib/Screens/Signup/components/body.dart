import 'package:doorstep/Screens/Login/login_screen.dart';
import 'package:doorstep/Screens/Signup/components/background.dart';
import 'package:doorstep/Screens/Signup/components/or_divider.dart';
import 'package:doorstep/Screens/Signup/components/social_icon.dart';
import 'package:doorstep/Screens/home/home.dart';
import 'package:doorstep/components/already_have_an_account_acheck.dart';
import 'package:doorstep/components/rounded_button.dart';
import 'package:doorstep/components/rounded_input_field.dart';
import 'package:doorstep/components/rounded_password_field.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Text(
                "SIGNUP",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.03),
              SvgPicture.asset(
                "assets/icons/signup.svg",
                height: size.height * 0.35,
              ),
              RoundedInputField(
                hintText: "Your Name",
                onChanged: (value) {},
              ),
              RoundedInputField(
                hintText: "Your Mobile",
                onChanged: (value) {},
              ),
              RoundedInputField(
                hintText: "Your Email",
                onChanged: (value) {},
              ),
              RoundedInputField(
                hintText: "Your Passsword",
                onChanged: (value) {},
              ),
              RoundedButton(
                text: "SIGNUP",
                press: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
              ),
              SizedBox(height: size.height * 0.03),
              AlreadyHaveAnAccountCheck(
                login: false,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginScreen();
                      },
                    ),
                  );
                },
              ),
              OrDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // SocalIcon(
                  //   iconSrc: "assets/icons/facebook.svg",
                  //   press: () {},
                  // ),
                  // SocalIcon(
                  //   iconSrc: "assets/icons/twitter.svg",
                  //   press: () {},
                  // ),
                  SocalIcon(
                    iconSrc: "assets/icons/google-plus.svg",
                    press: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
