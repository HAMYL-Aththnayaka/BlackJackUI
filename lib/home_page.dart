import 'package:flutter/material.dart';


class HomePage extends StatefulWidget{

    @override
    _HomePageState createState()=> _HomePageState();

}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:Colors.green[800],
      body:Center(
        child:Container(
          child:Column(  
          mainAxisAlignment:MainAxisAlignment.center,
          children:[
            Container(
              color:Colors.white,
              height:120,
              width:70
            ),
          ],
          ),
        ),
      )
    );
      
  } 
}