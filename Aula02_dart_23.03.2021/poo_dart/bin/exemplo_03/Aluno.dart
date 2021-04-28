class Aluno {

  //atributos
  //o underline '_' coloca o atributo como private
  String _nome; 
  int _idade;

  //construtor
  Aluno(String nome, {int idade}) {
    _nome = nome;
    _idade = idade;
  }
  //encapsulamento em dart
  String get nome => _nome;
  set nome(value) => _nome = value;

  int get idade => _idade;
  set idade(value) => _idade = value;

}