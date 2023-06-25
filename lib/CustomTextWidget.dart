import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  String textToDisplay = "";
  Color colour=Colors.white;
  CustomTextWidget({super.key, required this.textToDisplay,required this.colour});

  @override
  Widget build(BuildContext ctx) {
    return Text(
      textToDisplay,
      style: TextStyle(fontSize: 50.0, color: colour),
    );
  }
}
