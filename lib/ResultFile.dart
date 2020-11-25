import 'package:bmi_calculator_app/ConstantFile.dart';
import 'package:bmi_calculator_app/ContainerFile.dart';
import 'package:bmi_calculator_app/Input_Page.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen(
      {@required this.bmiResult,
      @required this.bmiText,
      @required this.bmiInterpret});
  final String bmiResult;
  final String bmiText;
  final String bmiInterpret;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Result'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  'Your RESULT',
                  style: kTitleStyleOFResult,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: RepeatContainerCode(
              colors: activeColor,
              cardWidget: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bmiText.toUpperCase(),
                    style: kResultTXT,
                  ),
                  Text(
                    bmiResult,
                    style: kBMIResultBody,
                  ),
                  Text(
                    bmiInterpret,
                    textAlign: TextAlign.center,
                    style: kBMiResultTXT,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => InputPage()));
              },
              child: Container(
                child: Center(
                  child: Text(
                    'ReCALCULATE',
                    style: kLargeBtnStyle,
                  ),
                ),
                height: 60.0,
                width: double.infinity,
                color: Color(0xffeb1555),
                margin: EdgeInsets.only(top: 10.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
