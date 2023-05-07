import 'package:flutter/material.dart';
import 'package:coin_flipper/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Coin Flipper',
      home: Scaffold(
        body: GradientBackground([Colors.amber,Color.fromARGB(255, 169, 136, 25)]),
      ),
    ),
  );
}
