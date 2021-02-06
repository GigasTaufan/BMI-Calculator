import 'package:bmi_app_2/screens/input_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BMIApp2());
}

class BMIApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}
