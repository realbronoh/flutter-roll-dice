import 'package:flutter/material.dart';
import 'package:roll_dice/styled_text.dart';

class GradientContainer extends StatelessWidget {
  static const startAlignment = Alignment.topLeft;
  static const endAlignment = Alignment.bottomRight;
  final List<Color> colors;

  const GradientContainer({
    super.key,
    required this.colors,
  });

  const GradientContainer.yellow({
    super.key,
  }) : colors = const [
          Colors.yellow,
          Colors.black,
        ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Image.asset(
          'assets/images/dice-1.png',
          width: 200,
        ),
      ),
    );
  }
}
