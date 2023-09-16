import 'dart:io';
import 'package:app_ims/exception/nome_invalido.dart';
import 'package:app_ims/pessoa.dart';
import 'package:app_ims/utils.dart';

void main(List<String> arguments) {
  print('Sistema de calculo de Indice de massa Corporal');
  String nome = consoleUtils.lerStringComTexto("Digite o seu nome:");
  try {
    if (nome.trim() == "") {
      throw NomeInvalido();
    }
  } on NomeInvalido {
    nome = "Sem Nome";
    print(NomeInvalido);
  } catch (e) {
    exit(0);
  }

  print("Digite o Peso em kilogramas:");
  double? peso = consoleUtils.lerDouble();

  print("Digite a sua altura em metros: ");
  double? altura = consoleUtils.lerDouble();

  var pessoa = Pessoa(nome, peso!, altura!);

  double imc = pessoa.resultadoImc(peso, altura);
  switch (imc) {
    case < 16:
      print("O IMC de $nome é  $imc. Classificado como: Magreza Grave");
      break;
    case >= 16 && < 17:
      print("O IMC de $nome é  $imc. Classificado como: Magreza Moderada");
      break;
    case >= 17 && < 18.5:
      print("O IMC de $nome é  $imc. Classificado como: Magreza Leve");
      break;
    case >= 18.5 && < 25:
      print("O IMC de $nome é  $imc. Classificado como: Magreza Saudável");
      break;
    case >= 25 && < 30:
      print("O IMC de $nome é  $imc. Classificado como: Sobrepeso");
      break;
    case >= 30 && < 35:
      print("O IMC de $nome é  $imc. Classificado como: Obesidade Grau 1");
      break;
    case >= 35 && < 40:
      print(
          "O IMC de $nome é  $imc. Classificado como: Obesidade Grau 2 (severa)");
      break;
    case >= 40:
      print(
          "O IMC de $nome é  $imc. Classificado como: Obesidade Grau 3 (mórbida)");
      break;
    default:
  }
}
