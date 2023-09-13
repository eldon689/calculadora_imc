import 'package:calculadora_imc/calculadora_imc.dart';
import 'package:test/test.dart';

void main() {
  test('calcularIMC', () {
    expect(calcularIMC(85, 1.77), true);
  });
}
