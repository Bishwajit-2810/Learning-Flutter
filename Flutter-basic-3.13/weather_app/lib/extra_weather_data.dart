import 'package:flutter/material.dart';

class ExtraData extends StatelessWidget {
  final IconData icon;
  final String typeofdata;
  final String number;
  const ExtraData(
      {super.key,
      required this.icon,
      required this.typeofdata,
      required this.number});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 32),
        const SizedBox(height: 8),
        Text(
          typeofdata,
          style: const TextStyle(
            fontSize: 15,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          number,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
