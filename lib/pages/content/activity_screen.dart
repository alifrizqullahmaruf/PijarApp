import 'package:flutter/material.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Center(
            child: Text(
              "ActivityScreen",
              style: TextStyle(fontSize: 36),
            ),
          )
        ],
      )),
    );
  }
}
