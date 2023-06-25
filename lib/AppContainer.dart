import 'dart:math';

import 'package:flutter/material.dart';
import 'CustomTextWidget.dart';

class AppContainer extends StatefulWidget {
  AppContainer({super.key});

  @override
  State<StatefulWidget> createState() {
    return _AppContainerState();
  }
}

class _AppContainerState extends State<AppContainer>{
  String imageToDisplay = "assets/dice-4.png";

  List<String> Images = [
    "assets/dice-1.png",
    "assets/dice-2.png",
    "assets/dice-3.png",
    "assets/dice-4.png",
    "assets/dice-5.png",
    "assets/dice-6.png"
  ];

  void RollDice() {
    var random = Random();
    setState(() {
      String imageFound=Images[random.nextInt(6)];
      print("image  :"+imageFound);
      imageToDisplay=imageFound;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.indigo],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                imageToDisplay,
                width: 250,
              ),
            ),
            Container(
              height: 60,
              margin:const EdgeInsets.only(top: 40),
              width: 200,
              color: Colors.black,
              child: ElevatedButton(
                  style:const ButtonStyle(mouseCursor:MaterialStateMouseCursor.clickable,),
                  onPressed: RollDice,
                  child:const Text(
                    "Roll",

                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold , fontSize: 25),
                  )),
            )
          ],
        ));
  }
}
