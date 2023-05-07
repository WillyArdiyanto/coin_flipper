import 'package:flutter/material.dart';
import 'package:coin_flipper/coint_flipper.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientBackground extends StatelessWidget {
  const GradientBackground(this.colors, {super.key});

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors, begin: startAlignment, end: endAlignment),
      ),
      child: const Center(
        child: CoinFlipper(),
      ),
    );
  }
}
