import 'package:flutter/material.dart';
import 'button_chips..dart';

class RowOfButton extends StatelessWidget {
  final String c1, c2, c3, c4;
  final Color colorC1, colorC2, colorC3, colorC4;
  final VoidCallback onPress1, onPress2, onPress3, onPress4;

  const RowOfButton(
      {super.key,
      required this.c1,
      required this.c2,
      required this.c3,
      required this.c4,
      required this.colorC1,
      required this.colorC2,
      required this.colorC3,
      required this.colorC4,
      required this.onPress1,
      required this.onPress2,
      required this.onPress3,
      required this.onPress4});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ButtonChips(
          button: c1,
          color: colorC1,
          onPress: onPress1,
        ),
        ButtonChips(
          button: c2,
          color: colorC2,
          onPress: onPress2,
        ),
        ButtonChips(
          button: c3,
          color: colorC3,
          onPress: onPress3,
        ),
        ButtonChips(
          button: c4,
          color: colorC4,
          onPress: onPress4,
        )
      ],
    );
  }
}
