import 'dart:html';

import 'package:flutter/material.dart';

void main() {

  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}
 
class Home extends StatefulWidget{
  //ESTADO DA APLICAÇÃO
  @override
  _HomeState createState() => _HomeState();
}

//ESSA CLASSE CONTROLA O ESTADO DA APLICAÇÃO
class _HomeState extends State<Home>{

  //CONFIGURANDO OS CAMPOS DE ENTRADA DE VALORES
  TextEditingController alcoolController = TextEditingController();
  TextEditingController gasolinaController = TextEditingController();
  String _resultado = ''; //RECEBE O RESULTADO 'TEXTO' DO CÁLCULO
  GlobalKey<FormState> _formKey = GlobalKey<FormState>(); //CONTROLA O ESTADO DO FORMULARIO

  //METÓDOS PARA CALCULAR COMBUSTIVEL E RESETAR A APLICAÇÃO
  void _reset(){
    alcoolController.text = '';
    gasolinaController.text = '';
    setState(() {
      _resultado = '';
      _formKey = GlobalKey<FormState>(); //RESETOU O ESTADO DO FORM
    });
  }

  void _calculaCombustivelIdeal(){
    setState(() {
      //CONVERTENDO ALCOOL E GASOLINA
      double varAlcool = double.parse(alcoolController.text.replaceAll(',', '.'));
      double varGasolina = double.parse(gasolinaController.text.replaceAll(',', '.'));

      //FAZENDO A OPERAÇÃO
      double proporcao = varAlcool / varGasolina;
      _resultado = (proporcao < 0.7) ? 'Abasteça com Álcool!' : 'Abasteça com Gasolina!';
    });
  }

  //AQUI COMEÇA A INTERFACE
  @override 
  Widget build(BuildContext context){ //CONSTRUTOR DA INTERFACE

    return Scaffold(
      //CABEÇALHO DO APP
      appBar: AppBar(
        title: Text(
          'Álcool ou Gasolina?',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[900],
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh), 
            onPressed: (){_reset();}
          ),
        ],
      ),

      //CORPO DO APP
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(50.0, 10.0, 50.0, 0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              //ICONE DE GASOLINA
              Icon(Icons.local_gas_station, 
              size: 150.00, 
              color: Colors.lightBlue[900],
              ),

              //FORMULARIO CENTRAL ALCOOL
              TextFormField(
                controller: alcoolController,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                validator: (value) => value.isEmpty ? 'Informe o valor do Álcool:' : null,
                decoration: InputDecoration(
                  labelText: 'Valor do Álcool',
                  labelStyle: TextStyle(color: Colors.lightBlue[900]
                  ),
                ),
                style: TextStyle(
                  color: Colors.lightBlue[900],
                  fontSize: 20.00,
                ),
              ),

              //FORMULARIO CENTRAL GASOLINA
              TextFormField(
                controller: gasolinaController,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                validator: (value) => value.isEmpty ? 'Informe o valor da Gasolina:' : null,
                decoration: InputDecoration(
                  labelText: 'Valor da Gasolina',
                  labelStyle: TextStyle(color: Colors.lightBlue[900]
                  ),
                ),
                style: TextStyle(
                  color: Colors.lightBlue[900],
                  fontSize: 20.00,
                ),
              ),

              //BOTÃO DE CALCULO
              Padding(
                padding: EdgeInsets.only(top: 50.0, bottom: 50.0),
                child: Container(
                  height: 30.0,
                  child: RawMaterialButton(
                   onPressed: () {
                     if(_formKey.currentState.validate())
                     _calculaCombustivelIdeal();
                   },
                    child: Text(
                      'Calcular',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  fillColor: Colors.lightBlue[900],
                  ),
                ),
              ),

              //RESULTADO DO CALCULO
              Text(
                _resultado,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.lightBlue[900], fontSize: 20.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}