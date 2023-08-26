import 'package:bmi_calculator/models/people.dart';
import 'package:bmi_calculator/services/bmi.dart';
import 'package:bmi_calculator/utils/console_utils.dart';

void main(List<String> arguments) {
  String answer = '';

  do {
    var name = ConsoleUtils.readStringWithText('Digite o nome da pessoa: ');

    var height = double.tryParse(
            ConsoleUtils.readStringWithText('Digite a altura em metros: ')) ??
        0;

    var weight = double.tryParse(
            ConsoleUtils.readStringWithText('Digite o peso em Kg: ')) ??
        0;

    var people = People(name, weight, height);

    try {
      var bmi = Bmi.calculate(people);
      var classification = Bmi.getClassification(bmi);
      print('Valor do IMC $bmi');
      print('Classificação do IMC: $classification');
    } catch (error) {
      print('Valores inválidos informados!');
    }

    answer = ConsoleUtils.readStringWithText(
        'Deseja calcular para mais uma pessoa [S/n]? ');
  } while (answer == 's' || answer == 'S');
}
