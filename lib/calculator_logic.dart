import 'dart:math';

class CalculatorLogic {
  final int height;
  final int weight;
  double _bmi = 0.0;

  CalculatorLogic({required this.height, required this.weight});

  String getBMI() {
    _bmi = weight / pow((height / 100), 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResultCategory() {
    if (_bmi >= 30)
      return 'Obese';
    else if (_bmi >= 25)
      return 'Overweight';
    else if (_bmi >= 18.5)
      return 'Normal Weight';
    else
      return 'Underweight';
  }

  String getResultInterpretation() {
    if (_bmi >= 30) {
      return 'You have a very high than normal body weight. Do more exercise and focus on your diet plan.';
    } else if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
