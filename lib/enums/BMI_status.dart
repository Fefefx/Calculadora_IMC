// ignore_for_file: constant_identifier_names

enum BmiStatus {
  SEVERE_THINNESS,
  MODERATE_THINNESS,
  SLIGHT_THINNESS,
  HEALTHY,
  OVERWEIGHT,
  GRADE_I_OBESITY,
  GRADE_II_OBESITY,
  GRADE_III_OBESITY
}

Map<BmiStatus, String> bmiStatusLabel = {
  BmiStatus.SEVERE_THINNESS: 'Magreza grave',
  BmiStatus.MODERATE_THINNESS: 'Magreza moderada',
  BmiStatus.SLIGHT_THINNESS: 'Magreza leve',
  BmiStatus.HEALTHY: 'Saudável',
  BmiStatus.OVERWEIGHT: 'Sobrepeso',
  BmiStatus.GRADE_I_OBESITY: 'Obesidade Grau I',
  BmiStatus.GRADE_II_OBESITY: 'Obesidade Grau II(severa)',
  BmiStatus.GRADE_III_OBESITY: 'Obesidade Grau III(mórbida)'
};
