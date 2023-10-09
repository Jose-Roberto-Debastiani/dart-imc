import 'dart:convert';
import 'dart:io';

class ConsoleUtils {
  static String lerStringComTexto(String texto) {
    String? resp;
    while (resp == null || resp == "") {
      print(texto);
      resp = stdin.readLineSync(encoding: utf8);
      if (resp == null || resp == "") {
        print("Resposta inválida");
      }
    }
    return resp;
  }

  static double lerDoubleComTexto(String texto) {
    double? resp;
    while (resp == null) {
      print(texto);
      String line = stdin.readLineSync(encoding: utf8) ?? "";
      try {
        resp = double.parse(line);
      } catch (e) {
        resp = null;
        print("Resposta inválida");
      }
    }
    return resp;
  }
}
