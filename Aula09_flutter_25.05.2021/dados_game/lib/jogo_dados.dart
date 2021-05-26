import 'package:flutter/material.dart';
import 'package:dados_game/dados_controller.dart';
import 'package:dados_game/dados_controller.g.dart';
import 'package:dados_game/dados_screen.dart';
import 'package:provider/provider.dart';

class JogaDados extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Provider<DadosController>(
      create: (context) => DadosControoller(),
      child: Scaffold(

      ),
    );
  }
}