import 'dart:io';
import 'package:dart_bmi/bmi_gen_files.dart';
import 'package:dart_bmi/bmi_methods.dart';

Future<void> bmiApp(String weightInput, String heightInput, String name) async {
  try {
    double weight = double.parse(weightInput);
    double height = double.parse(heightInput);

    if (!weight.isNaN && !height.isNaN) {
      double bmi = bmiCalculate(weight, height);
      String bmiStatus = getStatus(bmi);
      print(name);
      print("IMC: ${bmi.toStringAsFixed(2)} & STATUS: $bmiStatus");
      print(bmiStatus);
      await createFile(bmi, name, bmiStatus);
    }
  } catch (e) {
    print('Problema na execução do programa: ${e.toString()}');
  }
}

Future<void> application() async {
  print('Seu peso em (KG) - (Ex.: 75):');
  String? weightInput = stdin.readLineSync();
  print('Sua altura em (CM) - (Ex.: 180):');
  String? heightInput = stdin.readLineSync();
  print('Seu nome compelto (Ex.: John Doe):');
  String? name = stdin.readLineSync();

  if (weightInput != null && heightInput != null && name != null) {
    await bmiApp(weightInput, heightInput, name);
  }
}
