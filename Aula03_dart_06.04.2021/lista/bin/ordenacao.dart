void main(List<String> arguments) {
  
  var produtos = <String>['Cenoura', 'Banana', 'Brócolis', 'Batata', 'Maçã'];
  
  //Ordenação de Listas
  //Crescente
  print('');
  var crescente = produtos..sort();
  for(var p in crescente){
    print(p);
  }

  //Ordenação de Listas
  //Decrescente
  print('');
  var decrescente = crescente.reversed;
  for(var p in decrescente){
    print(p);
  }

  /*print('');
  var experiencia = <String>['Carro', 'Moto', 'Bicicleta'];
  print(experiencia);
  print(experiencia.reversed);*/

  var nomes = <String>['Higor Rocha', 'Bianca Andrade', 'higor rocha', 'bianca andrade'];
  print('');
  print(nomes..sort());
  print('');
  print(nomes..reversed);
}