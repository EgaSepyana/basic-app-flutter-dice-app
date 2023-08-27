import 'package:flutter/material.dart';
import 'package:learn_dart/hooks.dart';

const startGradient = Alignment.topRight;
const endGradient = Alignment.bottomLeft;

class ContainerWithGradientColor extends StatelessWidget {
  const ContainerWithGradientColor({super.key, required this.color});

  const ContainerWithGradientColor.purple({super.key})
      : color = const [
          Color.fromARGB(255, 36, 16, 70),
          Color.fromARGB(255, 47, 23, 87)
        ];
  final List<Color> color;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: color,
          begin: startGradient,
          end: endGradient,
        ),
      ),
      child: const Center(
        child: DiceState(),
      ),
    );
  }
}

class ContainerWithNormalColor extends StatelessWidget {
  const ContainerWithNormalColor({super.key});
  @override
  Widget build(context) {
    return const Center(
      child: Text("Test Costume Widget"),
    );
  }
}

class TextStyled extends StatelessWidget {
  const TextStyled(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
        color: Color.fromARGB(255, 255, 255, 255),
        fontWeight: FontWeight.bold,
        fontSize: 28,
      ),
    );
  }
}
