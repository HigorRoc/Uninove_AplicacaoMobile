import 'package:flutter/material.dart'; //Android
import 'package:flutter/cupertino.dart'; //Apple
import 'package:path_provider/path_provider.dart'; //Armazenaento local
import 'dart:convert'; //Manipular json
import 'dart:io'; //Manipular arquivos

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List _toDoList = []; //Lista de Tarefas
  final _toDoController = TextEditingController ();
  late int _indexlastRemoved; //Guarda o Ultimo índice registro removido
  late Map<String,dynamic> _lastRemoved;// guarda o último registro removido

  //## Vamos implementar a lógica ##
  //Carrega os dados do arquivo ao mudar o estado da classe
  @override   
  void initState(){
    super.initState();
    _lerDados().then((value){
      setState((){
        _toDoList = json.decode(value!); //ERROR
      });
    });
  }

  // "async" determina que um método será assíncrono, não retorna imediatamente um valor.
  // "await" determina que o app aguarde um retorno (resposta)
  // "future" determina que uma função vai retornar algo no futuro

  Future<String?> _lerDados() async{
    try {
      final arquivo = await _abreArquivo();
      return arquivo.readAsString();
    } catch (e) {
      return null; //ERROR
    }
  }

  Future<File> _abreArquivo() async{
    final diretorio = await getApplicationDocumentsDirectory();
    return File("${diretorio.path}/dados.json");

    //_toDoList.add(value);
  } 

  Future<Null> _recarregaLista() async{
    await Future.delayed(Duration(seconds: 1));
    setState(() {
      _toDoList.sort((a, b){
        if(a['realizado'] && !b['realizado']) return 1;
        if(!a['realizado'] && b['realizado']) return -1;
        return 0;
      });
      _salvarDados();
    });
    return null;
  }

  Future<File> _salvarDados() async{
    String dados = json.encode(_toDoList);
    final arquivo = await _abreArquivo();
    return arquivo.writeAsString(dados);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}