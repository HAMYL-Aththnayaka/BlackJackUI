import 'package:flutter/material.dart';

Widget Heart(){
  return Text(
    '❤️' ,
    style:TextStyle(
      color:Colors.red[800],
      fontSize:20.0
    ));
}
Widget Diamond(){
  return Text(
    '♦️' ,
    style:TextStyle(
      color:Colors.red[800],
      fontSize:20.0
    ));
}
Widget Spades(){
  return Text(
    '♠️' ,
    style:TextStyle(
      color:const Color.fromARGB(255, 0, 0, 0),
      fontSize:20.0
    ));
}
Widget Clover(){
  return Text(
    '🍀' ,
    style:TextStyle(
      color:Color.fromARGB(255, 8, 2, 2),
      fontSize:20.0
    ));
}