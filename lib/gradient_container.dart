import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  static const startAlignment = Alignment.topLeft;
  static const endAlignment = Alignment.bottomRight;
  final List<Color> colors;
  var activeDiceImage = 'assets/images/dice-1.png';

  GradientContainer({
    super.key,
    required this.colors,
  });

  GradientContainer.yellow({
    super.key,
  }) : colors = const [
          Colors.yellow,
          Colors.black,
        ];

  void rollDice() {
    //
    activeDiceImage = 'assets/images/dice-3.png';
  }

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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              activeDiceImage,
              width: 200,
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(
                //   top: 20,
                // ),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28,
                ),
              ),
              child: const Text('Roll Dice'),
            )
          ],
        ),
      ),
    );
  }
}
