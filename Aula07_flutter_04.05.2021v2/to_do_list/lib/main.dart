import 'package:flutter/material.dart';
import 'package:to_do_list/temas/temas.dart';
import 'package:to_do_list/telas/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Lista de tarefas',
    home: Home(),
    themeMode: ThemeMode.system, // tema atual do smartphone
    theme: lightTheme(),
    darkTheme: darkTheme(),
  ));
}