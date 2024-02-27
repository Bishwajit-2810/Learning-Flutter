import 'package:basic_class_8_calculator/constants.dart';
import 'package:flutter/material.dart';

class ButtonChips extends StatelessWidget {
  final String button;
  final Color color;
  final VoidCallback onPress;

  const ButtonChips({
    super.key,
    required this.button,
    required this.color,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPress,
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              button,
              style: buttonTextStyle,
            ),
          ),
        ),
      ),
    );
  }
}
