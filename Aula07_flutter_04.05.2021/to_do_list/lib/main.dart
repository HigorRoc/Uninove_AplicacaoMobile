import 'package:flutter/material.dart';
import 'package:saved_tasks/temas/temas.dart';
import 'package:saved_tasks/telas/home.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'To Do List',
      //home: Home(),
      themeMode: ThemeMode.system, //Tema atual do Smartphone
      theme: ligthTheme(),
      darkTheme: darkTheme(),
    )
  );
}
