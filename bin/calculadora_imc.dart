import 'dart:convert';
import 'dart:io';

import 'package:calculadora_imc/calculadora_imc.dart';
import 'package:calculadora_imc/classes/pessoa.dart';
import 'package:calculadora_imc/exception/peso_invalido_exception.dart';
import 'package:calculadora_imc/models/console_utils.dart';

void main(List<String> arguments) {
  try {
    // pegando o nome da pessoa
    String nome = ConsoleUtils.lerStringComTexto("Digite o Nome da pessoa:");
    try {
      if (nome.trim() == "" || double.tryParse(nome) != null) {
        while (nome.trim() == "" || double.tryParse(nome) != null) {
          nome = ConsoleUtils.lerStringComTexto("Digite o Nome da pessoa:");
        }
      }
    } catch (nomeInvalidoException) {
      print(nomeInvalidoException);
    }

    // pegando o peso da pessoa
/*
    print("Digite o Peso da pessoa:");
    var peso = stdin.readLineSync(encoding: utf8);
    var pesoPessoa = double.parse(peso ?? "0");
*/
    double? peso;
    var pesoPessoa = 0.0;
    peso = ConsoleUtils.lerDoubleComTexto("Digite o Peso da pessoa:");

    try {
      if (peso != null || !peso!.isNaN) {
        pesoPessoa = peso;
        print(pesoPessoa);
      }
    } catch (e) {
      print("O Peso \"$peso\" da pessoa é inválido!");
      print(PesoInvalidoException());
    }

    // pega Altura
    print("Digite a Altura da pessoa:");
    var altura = stdin.readLineSync(encoding: utf8);
    var alturaPessoa = double.parse(altura ?? "0");

    var pessoa1 = Pessoa(nome, pesoPessoa, alturaPessoa);
    print(
        "Nome: ${pessoa1.getNome()} ${pessoa1.getPeso()}kg ${pessoa1.getAltura()}cm");

    calcularIMC(pessoa1.getPeso(), pessoa1.getAltura());
  } catch (e) {
    e.toString();
  }
}
