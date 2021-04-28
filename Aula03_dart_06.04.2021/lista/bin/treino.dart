/*Adicionar 5 produtos na lista e, usando um laço(for),
  apresentar os produtos um embaixo do outro.
  Tempo: 13 minutos (20:15)*/

void main(List<String> arguments) {
  
  var produtos = <String>['Cenoura', 'Banana', 'Brócolis', 'Batata', 'Maçã'];
  produtos..add('Beterraba')..add('Goiaba')..add('Laranja')..add('Tangerina');

  //Percorrer a lista com um For()
  //1° Forma
  print('');
  for(var i=0; i<produtos.length; i++){
    print('Item ${i+1} => ${produtos[i]}');
  }

  //Percorrer a lista com um foreach
  //2° Forma
  print('');
  for(var produto in produtos){
    print(produto);
  }

  //Usando mapeamento
  //3° Forma
  print('');
  print(produtos.map((e) => (e))); //tupla ou série
}
