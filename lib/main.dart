import 'package:flutter/material.dart';

void main() {
  runApp(Center(
    child: Text(
      'hello',
      textDirection: TextDirection.ltr,
      style: TextStyle(
        fontSize: 40.0,
        fontWeight: FontWeight.bold,
        color: Colors.yellow,
      ),
    ),
  ));
}
