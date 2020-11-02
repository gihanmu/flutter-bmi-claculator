import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final int weight;
  final int height;
  double _bmi;

  String calculateBMI() {
    _bmi = (weight / pow(height / 100, 2));
    return _bmi.toStringAsFixed(2);
  }

  String getResult() {
    if (_bmi < 20) {
      return 'Underweight';
    } else if (_bmi > 20 && _bmi < 25) {
      return 'Healthy';
    } else {
      return 'Overweight';
    }
  }

  String getInterpretation() {
    if (_bmi < 20) {
      return 'You are underweight. Get more calories';
    } else if (_bmi > 20 && _bmi < 25) {
      return 'You are in healthy range. Keep it up';
    } else {
      return 'You have a higher than normal body weight. Try to exercise more';
    }
  }
}
