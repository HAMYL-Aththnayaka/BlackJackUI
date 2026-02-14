import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius:BorderRadius.circular(10),
        child:Container(
      
        color: Colors.white, 
        height: 125, 
        width: 98,
        child:Image.asset('assets/Bjs.png')
        ),
        ),
    );
  }
}
