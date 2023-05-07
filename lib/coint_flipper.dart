import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class CoinFlipper extends StatefulWidget {
  const CoinFlipper({super.key});

  @override
  State<CoinFlipper> createState() {
    return _CoinFlipperState();
  }
}

class _CoinFlipperState extends State<CoinFlipper> {
  var currentCoinFlip = 1;

  void flipCoin() {
    setState(() {
      currentCoinFlip = randomizer.nextInt(2) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/coin$currentCoinFlip-removebg-preview.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: flipCoin,
          style: TextButton.styleFrom(
            foregroundColor: Colors.amber.shade50,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Flip Coin!'),
        ),
      ],
    );
  }
}
