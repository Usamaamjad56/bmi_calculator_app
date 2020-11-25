import 'package:bmi_calculator_app/ConstantFile.dart';
import 'package:flutter/material.dart';

class RepeatIconAndText extends StatelessWidget {
  RepeatIconAndText({@required this.iconData, this.label});
  final IconData iconData;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kLabelStyle,
        ),
      ],
    );
  }
}
