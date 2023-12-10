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
      child: const Center(child: StyledText("Hello Hello Flutter!")),
    );
  }
}
