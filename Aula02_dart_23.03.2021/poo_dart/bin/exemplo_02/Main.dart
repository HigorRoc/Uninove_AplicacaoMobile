import 'Operacoes.dart';

void main(List<String> args) {

  //atributos
  var op = Operacoes();
  var v1 = 2;
  var v2 = 3;  

  print('O valor da soma é ${op.somar(v1, v2)}.');
  print('O valor da multiplicação é ${op.multiplicar(v1, v2)}.');
  print('O valor da potência é ${op.potencia(v1, v2)}.');
  print('O valor ${v1} é Par? ${op.isPar(v1)}.');
  print('O valor ${v2} é Ímpar? ${op.isPar(v2)}.');
  
  /*
  print(op.somar(v1, v2)); // 5
  print(op.multiplicar(v1, v2)); // 6
  print(op.potencia(v1, v2)); //8
  print(op.isPar(v1)); // true
  print(op.isPar(v2)); // false
  */
}