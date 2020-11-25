import 'dart:math';

class calculatorBrain {
  calculatorBrain({this.height, this.weight});
  final int height;
  final int weight;
  double bmi;
  String calculateBMI() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (bmi >= 25) {
      return 'OverWeight';
    } else if (bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getInterpretation() {
    if (bmi >= 25) {
      return 'You have higher body weight than normal.Try to Excercise';
    } else if (bmi >= 18.5) {
      return 'Normal body weight. Good job!';
    } else {
      return 'You have lower body weight than normal.Try to Eat a bit more';
    }
  }
}
