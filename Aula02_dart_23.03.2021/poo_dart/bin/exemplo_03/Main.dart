import 'Aluno.dart';

void main(List<String> args) {
  
  var aluno = Aluno('Higor', idade: 20);

  //aluno.nome = 'Higor';
  print(aluno.nome);
  print(aluno.idade);
}