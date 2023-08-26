import 'package:bmi_calculator/bmi_calculator.dart';
import 'package:bmi_calculator/enums/BMI_status.dart';
import 'package:bmi_calculator/models/people.dart';
import 'package:test/test.dart';
import 'package:bmi_calculator/services/bmi.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });

  test('Checa a exceção de altura igual a 0', () {
    People people = People('Renan', 106.75, 0);
    expect(() => Bmi.calculate(people), throwsA(TypeMatcher<ArgumentError>()));
  });

  test('Checa a exceção de altura menor que 0', () {
    People people = People('Renan', 106.75, -1.52);
    expect(() => Bmi.calculate(people), throwsA(TypeMatcher<ArgumentError>()));
  });

  test('Checa a exceção de peso igual a 0', () {
    People people = People('Renan', 0, 1.83);
    expect(() => Bmi.calculate(people), throwsA(TypeMatcher<ArgumentError>()));
  });

  test('Checa a exceção de peso menor que 0', () {
    People people = People('Renan', -24, 1.83);
    expect(() => Bmi.calculate(people), throwsA(TypeMatcher<ArgumentError>()));
  });

  test('Verifica cálculo do IMC', () {
    People people = People('Renan', 106.75, 1.83);
    expect(Bmi.calculate(people), 31.88);
  });

  test('Classificação magreza grave', () {
    People people = People('Renan', 53.55, 1.83);
    var bmi = Bmi.calculate(people);
    expect(
        Bmi.getClassification(bmi), bmiStatusLabel[BmiStatus.SEVERE_THINNESS]);
  });

  test('Classificação magreza moderada', () {
    People people = People('Renan', 53.58, 1.83);
    var bmi = Bmi.calculate(people);
    expect(Bmi.getClassification(bmi),
        bmiStatusLabel[BmiStatus.MODERATE_THINNESS]);
  });

  test('Classificação magreza leve', () {
    People people = People('Renan', 56.93, 1.83);
    var bmi = Bmi.calculate(people);
    expect(
        Bmi.getClassification(bmi), bmiStatusLabel[BmiStatus.SLIGHT_THINNESS]);
  });

  test('Classificação saudável', () {
    People people = People('Renan', 61.95, 1.83);
    var bmi = Bmi.calculate(people);
    expect(Bmi.getClassification(bmi), bmiStatusLabel[BmiStatus.HEALTHY]);
  });

  test('Classificação sobrepeso', () {
    People people = People('Renan', 83.72, 1.83);
    var bmi = Bmi.calculate(people);
    expect(Bmi.getClassification(bmi), bmiStatusLabel[BmiStatus.OVERWEIGHT]);
  });

  test('Classificação obesidade grau I', () {
    People people = People('Renan', 100.46, 1.83);
    var bmi = Bmi.calculate(people);
    expect(
        Bmi.getClassification(bmi), bmiStatusLabel[BmiStatus.GRADE_I_OBESITY]);
  });

  test('Classificação obesidade grau II', () {
    People people = People('Renan', 117.21, 1.83);
    var bmi = Bmi.calculate(people);
    expect(
        Bmi.getClassification(bmi), bmiStatusLabel[BmiStatus.GRADE_II_OBESITY]);
  });

  test('Classificação obesidade grau III', () {
    People people = People('Renan', 133.95, 1.83);
    var bmi = Bmi.calculate(people);
    expect(Bmi.getClassification(bmi),
        bmiStatusLabel[BmiStatus.GRADE_III_OBESITY]);
  });
}
