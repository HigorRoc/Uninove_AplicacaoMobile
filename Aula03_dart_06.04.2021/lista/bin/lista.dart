/*Listas em Dart = é uma estrutura de dados que guarda os dados
  de forma sequencial na memória. (parecido com os vetores)*/

void main(List<String> arguments) {
  //Criando uma lista de produtos
  // <> é conhecido como diamond
  var produtos = <String>['Cenoura', 'Banana', 'Brócolis', 'Batata', 'Maçã'];

  //Mostrando os elementos
  print('');
  print(produtos); 

  //Acessando elementos pelo índice
  print('');
  print(produtos[1]); //Banana
  print(produtos[2]); //Brócolis

  //Adicionar elementos na Lista (no final)
  produtos.add('Kiwi');
  print('');
  print(produtos); 

  //Remover elementos da Lista
  produtos.remove('Brócolis');
  print('');
  print(produtos); 

  //Remover elementos da Lista (pelo índice)
  produtos.removeAt(0);
  print('');
  print(produtos); 

  //Verificando o tamanho da lista
  var tam = produtos.length;
  print('');
  print('A lista tem ${tam} produtos.');

  //Pesquisar uma ocorrência
  //print(produtos.contains('Batata)); //true or false
  if(produtos.contains('Batata')){
    print('');
    print('Tem Batata');
  } else {
    print('');
    print('Não tem Doritos, então coloca na lista.');
    produtos.add('Doritos');
    print(produtos);
  }
}
