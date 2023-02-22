import 'package:dart_bmi/bmi_enums.dart';

double bmiCalculate(double weight, double height) {
  return weight / ((height / 100) * (height / 100));
}

String getStatus(double bmi) {
  final bool bmiLow = bmi < 18.5;
  final bool normalWeight = bmi >= 18.5 && bmi <= 24.99;
  final bool overWeight = bmi >= 25 && bmi <= 29.99;
  final bool obesity = bmi > 30;

  if (bmiLow) {
    return BmiStatus.lowWeight.message;
  }

  if (normalWeight) {
    return BmiStatus.normalWeight.message;
  }

  if (overWeight) {
    return BmiStatus.overWeight.message;
  }

  if (obesity) {
    return BmiStatus.obesity.message;
  }

  return BmiStatus.dontFound.message;
}
