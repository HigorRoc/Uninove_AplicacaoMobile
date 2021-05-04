import 'package:flutter/material.dart';

//Tema Escuro
ThemeData darkTheme(){
  return ThemeData(
    brightness: Brightness.dark, //Brilho
    primaryColor: Colors.black, //Cor principal
    accentColor: Colors.orange, //Cor destaque
    appBarTheme: AppBarTheme(color: Colors.grey), //Cor da Barra
    scaffoldBackgroundColor: Colors.grey[800], //Backgorund
    iconTheme: IconThemeData(color: Colors.white), //Cor do icone
    hintColor: Colors.orange,
    floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: Colors.white70),//Cor do botão

    textTheme: TextTheme(
      headline4: TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold), //Texto H4 Style
      headline5: TextStyle(fontSize: 23.0, fontWeight: FontWeight.w200) //Texto H5 Style
    ),
  );
}

//Tema Claro
ThemeData ligthTheme(){
  return ThemeData(
    brightness: Brightness.light, //Brilho
    primaryColor: Colors.purple, //Cor principal
    accentColor: Colors.orange, //Cor destaque
    appBarTheme: AppBarTheme(color: Colors.deepPurple), //Cor da Barra
    scaffoldBackgroundColor: Colors.white, //Backgorund
    iconTheme: IconThemeData(color: Colors.white), //Cor do icone
    hintColor: Colors.orange,
    floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: Colors.orange),//Cor do botão

    textTheme: TextTheme(
      headline4: TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold), //Texto H4 Style
      headline5: TextStyle(fontSize: 23.0, fontWeight: FontWeight.w200) //Texto H5 Style
    ),
  );
}