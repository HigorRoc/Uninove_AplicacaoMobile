import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ApexTech App',
      theme: ThemeData(
        //a linha abaixo define as cores do tema;
        primarySwatch: Colors.green,
        //primaryColor: Colors.amber, 
        //primaryColor: Color.fromRGBO(48, 210, 154, 1.0),
      ),
      home: MyHomePage(title: 'ApexTech App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++; //incrementando ao apertar o botão
    });
  }

  
  dynamic _soma(var a, var b){
    setState(() {
    });
  }
  

  @override
  //é um componente do flutter
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          //textDirection: VerticalDirection.down,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'CONTADOR',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Engcomica',
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              'Você apertou este botão a quantidade de vezes abaixo:',
            ),
             Text(
              'O contador sempre irá iniciar em "0":',
            ),
            Text(
              '$_counter', //a variavel é processada
              style: Theme.of(context).textTheme.headline3, //h1 até h6
            ),
          ],
        ),
      ),

      //Ações
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Botão que incrementa um valor ao ser clicado', //Acessibilidade, informações
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
