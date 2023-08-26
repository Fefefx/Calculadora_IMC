import 'package:bmi_calculator/enums/BMI_status.dart';
import 'package:bmi_calculator/models/people.dart';
import 'dart:math';

class Bmi {
  static double calculate(People people) {
    var height = people.getHeight();
    var weight = people.getWeight();

    if (height <= 0) {
      throw ArgumentError('A altura da pessoa não pode ser menor igual a 0');
    }

    if (weight <= 0) {
      throw ArgumentError('O peso da pessoa não pode ser menor igual a 0');
    }

    var bmi = weight / pow(height, 2);

    return double.parse(bmi.toStringAsFixed(2));
  }

  static String getClassification(double bmi) {
    BmiStatus status;

    if (bmi < 16) {
      status = BmiStatus.SEVERE_THINNESS;
    } else if (bmi >= 16 && bmi < 17) {
      status = BmiStatus.MODERATE_THINNESS;
    } else if (bmi >= 17 && bmi < 18.5) {
      status = BmiStatus.SLIGHT_THINNESS;
    } else if (bmi >= 18.5 && bmi < 25) {
      status = BmiStatus.HEALTHY;
    } else if (bmi >= 25 && bmi < 30) {
      status = BmiStatus.OVERWEIGHT;
    } else if (bmi >= 30 && bmi < 35) {
      status = BmiStatus.GRADE_I_OBESITY;
    } else if (bmi >= 35 && bmi < 40) {
      status = BmiStatus.GRADE_II_OBESITY;
    } else {
      status = BmiStatus.GRADE_III_OBESITY;
    }

    return bmiStatusLabel[status] ?? '';
  }
}
