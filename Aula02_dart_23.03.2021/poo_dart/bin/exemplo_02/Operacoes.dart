import 'dart:math';

class Operacoes {

  //criar pos métodos: somar, multiplicar, potência e isPar
  //isPar --> retorna número part ou impár

  ///Este método soma dois números informados
  ///
  ///parâmetros: dynamic num1 e dynamic num2
  ///
  ///return: dynamic
  dynamic somar(var v1, var v2) {
    return v1 + v2;
  }

  dynamic multiplicar(var v1, var v2) {
    return v1 * v2;
  }

  ///Base é o valor que será utilizado para multiplicar o expoente
  ///
  ///return: multiplicação 2.2.2 
  dynamic potencia(var base, var expoente) {
    return pow(base, expoente);
  }

  ///Retorna se um número é par ou ímpar
  ///
  ///return: bool
  bool isPar(int valor) {
    return (valor % 2 == 0);
  }
}