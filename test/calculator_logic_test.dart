import 'package:bmi_calculator_app_flutter/calculator_logic.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('validate BMI value', () {
    test('validate BMI value from height and weight', () {
      final calculatorLogic = CalculatorLogic(height: 150, weight: 30);
      String bmi = calculatorLogic.getBMI();
      expect(bmi, '13.3');
    });

    test('validate BMI value from height and weight', () {
      final calculatorLogic = CalculatorLogic(height: 120, weight: 60);
      String bmi = calculatorLogic.getBMI();
      expect(bmi, '41.7');
    });
  });

  group('validate BMI result category', () {
    test('validate BMI result category from BMI value', () {
      final calculatorLogic = CalculatorLogic(height: 120, weight: 60);
      calculatorLogic.getBMI();
      String category = calculatorLogic.getResultCategory();
      expect(category, 'Obese');
    });

    test('validate BMI result category from BMI value', () {
      final calculatorLogic = CalculatorLogic(height: 150, weight: 30);
      calculatorLogic.getBMI();
      String category = calculatorLogic.getResultCategory();
      expect(category, 'Underweight');
    });

    test('validate BMI result category from BMI value', () {
      final calculatorLogic = CalculatorLogic(height: 100, weight: 80);
      calculatorLogic.getBMI();
      String category = calculatorLogic.getResultCategory();
      expect(category, 'Obese');
    });

    test('validate BMI result category from BMI value', () {
      final calculatorLogic = CalculatorLogic(height: 120, weight: 30);
      calculatorLogic.getBMI();
      String category = calculatorLogic.getResultCategory();
      expect(category, 'Normal Weight');
    });

    test('validate BMI result category from BMI value', () {
      final calculatorLogic = CalculatorLogic(height: 120, weight: 38);
      calculatorLogic.getBMI();
      String category = calculatorLogic.getResultCategory();
      expect(category, 'Overweight');
    });
  });
}
