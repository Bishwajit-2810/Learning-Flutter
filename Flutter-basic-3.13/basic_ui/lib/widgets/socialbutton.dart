import 'package:basic_ui/pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialButton extends StatelessWidget {
  final String iconpath;
  final String iconlabel;
  final double horizontalpadding;
  const SocialButton({
    super.key,
    required this.iconpath,
    required this.iconlabel,
    this.horizontalpadding = 100,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(
          vertical: 30,
          horizontal: horizontalpadding,
        ),
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: Pallete.borderColor,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: () {},
      icon: SvgPicture.asset(
        iconpath,
        width: 25,
        color: Pallete.whiteColor,
      ),
      label: Text(
        iconlabel,
        style: const TextStyle(
          color: Pallete.whiteColor,
          fontSize: 17,
        ),
      ),
    );
  }
}
