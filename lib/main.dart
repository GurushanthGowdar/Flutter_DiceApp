import 'package:flutter/material.dart';
import 'package:diceapp/AppContainer.dart';

void main() {
  runApp(MaterialApp(
      title: "MyFirstApp",
      home: Scaffold(
        appBar: AppBar(title: const Text("Dice App")),
        body: AppContainer(),
      )));
}
