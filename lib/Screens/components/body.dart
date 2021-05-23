import 'package:flutter/material.dart';
import 'package:flutter_signin/Screens/components/background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //This size provide us total height and width of our screen
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "WELCOME TO APP",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
