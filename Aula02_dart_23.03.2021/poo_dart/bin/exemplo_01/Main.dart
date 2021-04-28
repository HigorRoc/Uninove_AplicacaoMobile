import 'Aluno.dart';

void main(List<String> args) {
  
  //instancia
  var aluno = Aluno();
  aluno.nome = 'Higor';
  aluno.idade = 20;

  //exemplo 1 sem o método
  print('O aluno ${aluno.nome} tem ${aluno.idade} anos.'); 

  //chamando o método
  aluno.fazAniversario(); 
  print('O aluno ${aluno.nome} tem ${aluno.idade} anos.');
}