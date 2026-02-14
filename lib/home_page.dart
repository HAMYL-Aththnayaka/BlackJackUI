import 'dart:math' as angle;

import 'package:blackjack_ui/card.dart';
import 'package:blackjack_ui/cardTemplate.dart';
import 'package:blackjack_ui/suits.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  AnimationStatus _animationStatus = AnimationStatus.dismissed;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(milliseconds: 200),
      vsync: this,
    );
    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        _animationStatus = status;
      });
  }

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
                children: [
                  cardTemplate(
                    color: Colors.black,
                    number: '10',
                    suit: Clover(),
                  ),
                  cardTemplate(
                    color: Colors.black,
                    number: '10',
                    suit: Heart(),
                  ),
                ],
              ),
              Transform.rotate(angle: angle.pi / 2, child: MyCard()),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  cardTemplate(
                    color: Colors.black,
                    number: '10',
                    suit: Spades(),
                  ),
                  cardTemplate(
                    color: Colors.black,
                    number: '10',
                    suit: Diamond(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
