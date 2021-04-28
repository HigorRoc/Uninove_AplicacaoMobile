import 'dart:io';

void main(List<String> arguments) {

  //Transformar em lista a seguinte frase
  //O Edson é bonitão, #SQN, a mãe dele acha, tadinha!

  var n1 = 'O Edson é bonitão, #SQN, a mãe dele acha, tadinha!'.split(' ');
  var lista = <String>[];

  //1° Forma
  for(var l in n1){
    print(l);
  }

  //2° Forma
  for(var l in n1){
    lista.add(l);
  }
  print('');
  print(lista);

  //Leitura do teclado
  var entrada = stdin.readLineSync();
  print(entrada);


  //Trabalhando com Objetos
  var alunos = <Aluno>[];
  alunos.add(Aluno(ra: 123, nome: 'Higor'));
  alunos.add(Aluno(ra: 456, nome: 'Bianca'));

  //Mostrando objetos dentro da lista
  for(var aluno in alunos){
    print(aluno.nome);
  }

  //Removendo Objetos
  alunos.removeWhere((Aluno a) => a.nome == 'Higor');
  for(var aluno in alunos){
    print(aluno.nome);
  }
}

  class Aluno{
    int ra;
    String nome;

    Aluno({this.ra, this.nome});
  }
