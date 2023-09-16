import 'dart:convert';
import 'dart:io';

double testResultadoImc(double peso, double altura) {
  double imc = peso / (altura * altura);
  return imc;
}

class consoleUtils {
  static String lerString() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static String lerStringComTexto(String texto) {
    print(texto);
    return lerString();
  }

  static double? lerDouble() {
    var value = lerString();
    try {
      return double.parse(value);
    } catch (e) {}
    return null;
  }
}
