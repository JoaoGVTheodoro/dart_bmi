import 'dart:io';

Future<void> createFile(double bmi, String name, String status) async {
  int now = DateTime.now().hashCode;
  final String path = "${bmi.toStringAsFixed(2)}-$now.txt";
  final File file = File(path);
  await file.writeAsString(
      "IMC do ${name.toUpperCase()}\nNOME: $name\nIMC: ${bmi.toStringAsFixed(2)}\nSTATUS: $status");
}
