import 'package:flutter/material.dart';
import 'package:practice_1/gradient_container.dart';


void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 190, 163, 26),
          Color.fromARGB(255, 41, 160, 246),
        ),
      ),
    ),
  );
}
