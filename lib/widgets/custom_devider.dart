import 'package:flutter/material.dart';

class CustomDevider extends StatelessWidget {
  const CustomDevider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Divider(
        thickness: 4,
        color: Color.fromARGB(255, 243, 243, 243),
      ),
    );
  }
}
