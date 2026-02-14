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
      duration: const Duration(milliseconds: 400),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0.0, end: 1.0)
        .animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        _animationStatus = status;
      });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _flipCard() {
    if (_animationStatus == AnimationStatus.dismissed) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[800],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            /// Top Cards
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                cardTemplate(
                  color: Colors.black,
                  number: '10',
                  suit: Clover(),
                ),
                cardTemplate(
                  color: Colors.red,
                  number: '10',
                  suit: Heart(),
                ),
              ],
            ),

            /// Flipping Card (Center)
            getFlippingCard('A', Diamond, Colors.red),

            /// Bottom Cards
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                cardTemplate(
                  color: Colors.black,
                  number: '10',
                  suit: Spades(),
                ),
                cardTemplate(
                  color: Colors.red,
                  number: '10',
                  suit: Diamond(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget getFlippingCard(var number, var suit, var color) {
    return GestureDetector(
      onTap: _flipCard,
      child: Transform(
        alignment: FractionalOffset.center,
        transform: Matrix4.identity()
          ..setEntry(3, 2, 0.002)
          ..rotateY(angle.pi * _animation.value),
        child: _animation.value >= 0.5
            ? cardTemplate(
                color: color,
                number: number,
                suit: suit(),
              )
            : MyCard(),
      ),
    );
  }
}
