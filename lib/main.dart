import 'package:bmi_calculator_app/Input_Page.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xAFF0A0E21),
        scaffoldBackgroundColor: Color(0xAFF0A0E21),
      ),
    );
  }
}
