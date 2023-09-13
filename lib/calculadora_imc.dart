calcularIMC(double peso, double altura) {
  double imc = peso / (altura * altura);
  imc = double.parse(imc.toStringAsFixed(1));
  print('Seu IMC é: $imc');

  switch (imc) {
    case double.infinity:
      print('Você inseriu um valor inválido para altura.');
      break;
    default:
      if (imc < 16) {
        print('Magreza grave.');
      } else if (imc >= 16.0 && imc < 17.0) {
        print('Magreza moderada.');
      } else if (imc >= 17.0 && imc < 18.5) {
        print('Magreza leve');
      } else if (imc >= 18.5 && imc < 25.0) {
        print('Saudável');
      } else if (imc >= 25.0 && imc < 30.0) {
        print('Sobrepeso');
      } else if (imc >= 30.0 && imc < 35.0) {
        print('Obesidade Grau I');
      } else if (imc >= 35.0 && imc < 40.0) {
        print('Obesidade Grau II(severa)');
      } else if (imc >= 40.0) {
        print('Obesidade Grau III(mórbida)');
        break;
      }
  }
  return true;
}
