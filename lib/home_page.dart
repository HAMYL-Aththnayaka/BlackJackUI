import 'package:blackjack_ui/card.dart';
import 'package:blackjack_ui/cardTemplate.dart';
import 'package:blackjack_ui/suits.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[800],
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [cardTemplate(
                  color:Colors.red,
                  number:'10',
                  suit:Clover(),
                ), cardTemplate(
                  color:Colors.red,
                  number:'10',
                  suit:Clover(),
                )],
              ),
              MyCard(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [cardTemplate(
                  color:Colors.red,
                  number:'10',
                  suit:Clover(),
                ), cardTemplate(
                  color:Colors.red,
                  number:'10',
                  suit:Clover(),
                )],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
