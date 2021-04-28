import 'dart:io';

void main() {

//Variáveis
/* String;
 * double;
 * bool (true or false);
 * int;
 * dynamic;
 * var;
 * List;
 * Map;
 */

//Declarando Váriaiveis
/*String nome = 'Higor Rocha';
  String curso = 'Sistemas de Informação';
  int qts_alinos = 100;
  double mensalidade = 1450.38;
  bool temVaga = true;*/

//Mostra na tela (consola)
/*print("Este é um texto literal - fixo");
  print(curso);*/

//Concatenando dados
//print("A Uninove tem o curso de " + curso);

//Outra forma
//print('A Uninoe tem o curso de $curso');

//Literal - é algo fixo, o inverso da variavel
//print('Olá Mundo!!!');

//Interpolação
//print('A Uninove tem o curso de $curso e o desconto é de ${mensalidade * 0.035}');

//Tipos especiais: dynamic and var
/*dynamic é um tipo que armazena o ultimo tipo do valor atribuído
  dynamic valor = 'Higor Rocha'; //String
  print(valor + ' Fernandes da Silva');*/

//var assume o tipo a partir da primeira atribuição
//Sem exemplo

//Faz a leitura do teclado
/*var input = stdin.readLineSync();
  print(input)´*/

//Estrutura de Decisão (if) é igual ao Java e ao C
/*var c1 = 2;
  var c2 = 3;
  var c3 = 2;

  if(c1 < c3){
    print('$c1 é menor que $c3');
  } else if(c2 > c1){
      print('$c2 é maior que $c1');
    } else{
        print('$c1 é igual a $c3');
      }*/

//Estrutura Switch
/*var temp = 25;
  switch(temp){
    case 20:
      print('Vamos ao amarelinho');
      break;

    case 25:
      print('Partiu Guaruja \\o/');
      break;

    default:
      print('Daí moiô!!');   
  }*/




//Vamos Praticar 01
//Realizar a soma entre três váriaveis inteiras e mostrar o resultado
int valor1 = 10;
  int valor2 = 20;
  int valor3 = 30;
  print(valor1 + valor2 + valor3);

int v1 = 10, v2 = 20, v3 = 30;
print("A soma entre as variáveis é de: ${v1 + v2 + v3}");



//Vamos Práticar 02
//Desenvolver um IMC em Dart, usando a tabela de "status";
int sexo = 2; //1=FEM e 2=MAS
double peso = 200;
double altura = 1.70;
double IMC;

switch(sexo){
    case 1:
      IMC = peso / (altura*altura);
      if(IMC < 18.5){
        print('Abaixo do Peso');
      } else if (IMC >= 18.5 && IMC < 24.9){
        print('Peso Normal');
      } else if (IMC == 25 && IMC < 29.9){
        print('Sobrepeso');
      } else if (IMC == 30 && IMC < 34.9){
        print('Obesidade Grau I');
      } else{
        print('Obesidade Grau II');
      }
      break;

    case 2:
      IMC = peso / (altura*altura);
      IMC = IMC - (IMC * 0.2); 
       if(IMC < 18.5){
        print('Abaixo do Peso');
      } else if (IMC >= 18.5 && IMC < 24.9){
        print('Peso Normal');
      } else if (IMC == 25 && IMC < 29.9){
        print('Sobrepeso');
      } else if (IMC == 30 && IMC < 34.9){
        print('Obesidade Grau I');
      } else{
        print('Obesidade Grau II');
      }
      break;

    default:
      print('Informe 1 ou 2!'); 
}


//Funções: com e sem retorno (Pesquisar sobre byVal e byRef)
//Sem retorno
/*void somar(int a, int b){
    print(a + b);
  }

//Com retorno
  int multiplicar(int a, int b){
    return a * b;
  } print(multiplicar(3, 2));
*/

//Funções: com parametros opcionais
/*void funcao(String nome, {String cor, int valor}){
  print(nome);
  print(cor ?? 'Azul');
  print(valor ?? 35);
}

  funcao('Higor Rocha', cor: 'verde', valor: 10);*/
}