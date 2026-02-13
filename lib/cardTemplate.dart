import 'package:flutter/material.dart';

class cardTemplate extends StatelessWidget{
final suit;
final color;
final number;

cardTemplate({
  this.suit,
  this.color,
  this.number,
});

  @override
  Widget build(BuildContext context){
    return Container(
      child:  Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius:BorderRadius.circular(10),
        child:Container(
      
        color: Colors.white, 
        height: 125, 
        width: 98,
        child:Center(
          child:Text('❤️'),
        )
        ),
        ),
    ),
    );
  }

}