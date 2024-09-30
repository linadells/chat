import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

class myButton extends StatelessWidget {
  Color colorOfButton;
  String textOfButton;
  Function? onPressed;
  myButton(
      {this.onPressed,
      required this.textOfButton,
      required this.colorOfButton});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colorOfButton,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: () {
            onPressed!();
          },
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            textOfButton,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
