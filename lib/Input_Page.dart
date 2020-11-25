import 'package:bmi_calculator_app/ContainerFile.dart';
import 'package:bmi_calculator_app/IconTextFile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activeColor = Color(0xFF1D1E33);
const deActiveColor = Color(0xFF111328);
enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = deActiveColor;
  Color femaleColor = deActiveColor;
  void updateColor(Gender gendertype) {
    if (gendertype == Gender.male) {
      maleColor = activeColor;
      femaleColor = deActiveColor;
    }
    if (gendertype == Gender.female) {
      femaleColor = activeColor;
      maleColor = deActiveColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    updateColor(Gender.male);
                  });
                },
                child: RepeatContainerCode(
                  colors: maleColor,
                  cardWidget: RepeatTextAndIconWidget(
                    iconData: FontAwesomeIcons.male,
                    label: 'Male',
                  ),
                ),
              )),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    updateColor(Gender.female);
                  });
                },
                child: RepeatContainerCode(
                  colors: femaleColor,
                  cardWidget: RepeatTextAndIconWidget(
                    iconData: FontAwesomeIcons.female,
                    label: 'Female',
                  ),
                ),
              ))
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: RepeatContainerCode(
                colors: Color(0xFF1D1E33),
              )),
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: RepeatContainerCode(
                colors: Color(0xFF1D1E33),
              )),
              Expanded(
                  child: RepeatContainerCode(
                colors: Color(0xFF1D1E33),
              ))
            ],
          )),
        ],
      ),
    );
  }
}
