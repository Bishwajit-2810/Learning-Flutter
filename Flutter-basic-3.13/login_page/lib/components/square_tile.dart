import 'package:flutter/material.dart';

class LoginWithTile extends StatelessWidget {
  final String iconpath;
  const LoginWithTile({
    super.key,
    required this.iconpath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey[200],
      ),
      child: Image.asset(
        iconpath,
        height: 40,
      ),
    );
  }
}
