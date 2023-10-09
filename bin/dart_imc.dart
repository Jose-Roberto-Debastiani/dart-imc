import 'package:dart_imc/models/pessoa.dart';

import 'console_utils.dart';

void main(List<String> arguments) {
  Pessoa pessoa = new Pessoa();

  pessoa.setNome(ConsoleUtils.lerStringComTexto("Qual seu nome? "));

  pessoa.setAltura(ConsoleUtils.lerDoubleComTexto("Qual sua altura? "));

  pessoa.setPeso(ConsoleUtils.lerDoubleComTexto("Qual seu peso? "));

  double imc = pessoa.getPeso() / (pessoa.getAltura() * pessoa.getAltura());

  String imcMsg = "";

  if (imc < 16.0) {
    imcMsg = "Magreza grave!";
  } else if (imc < 17.0) {
    imcMsg = "Magreza moderada!";
  } else if (imc < 18.5) {
    imcMsg = "Magreza leve!";
  } else if (imc < 25.0) {
    imcMsg = "Saudável.";
  } else if (imc < 30) {
    imcMsg = "Sobrepeso!";
  } else if (imc < 35.0) {
    imcMsg = "Obesidade Grau I!";
  } else if (imc < 40) {
    imcMsg = "Obesidade Grau II (severa)!";
  } else {
    imcMsg = "Obesidade Grau III (mórbida)!";
  }
  print(
      "${pessoa.getNome()}, seu IMC = ${imc.toStringAsFixed(2)}, indica $imcMsg");
}
