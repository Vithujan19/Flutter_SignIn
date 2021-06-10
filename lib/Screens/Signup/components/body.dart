import 'package:flutter/material.dart';
import 'package:flutter_signin/Screens/Login/login_screen.dart';
import 'package:flutter_signin/Screens/Signup/components/background.dart';
import 'package:flutter_signin/components/already_have_an_account.dart';
import 'package:flutter_signin/components/rounded_button.dart';
import 'package:flutter_signin/components/rounded_input_field.dart';
import 'package:flutter_signin/components/rounded_password_field.dart';
import 'package:flutter_signin/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'OrDivider.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "SIGN UP",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.03),
          SvgPicture.asset(
            "assets/icons/signup.svg",
            height: size.height * 0.35,
          ),
          RoundedInputField(
            hintText: "Your Email",
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "SIGN UP",
            press: () {},
          ),
          SizedBox(height: size.height * 0.03),
          AlreadyHaveAnAccountCheck(
            login: false,
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return LoginScreen();
              }));
            },
          ),
          OrDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(border: Border.all(), shape: BoxShape.circle),
              ),
            ],
          ),
        ],
      ),
    );
  }
}