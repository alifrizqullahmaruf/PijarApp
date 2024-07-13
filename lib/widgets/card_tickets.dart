import 'package:flutter/material.dart';

class TicketCard extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final String text;
  final double padding;
  final BorderRadius borderRadius;
  final Color borderColor;
  final double borderWidth;

  const TicketCard({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    required this.text,
    this.padding = 8.0,
    this.borderRadius = const BorderRadius.all(Radius.circular(8)),
    this.borderColor = Colors.transparent,
    this.borderWidth = 1.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: borderRadius,
        border: Border.all(color: borderColor, width: borderWidth),
      ),
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: Text(
          text,
          style: TextStyle(color: textColor, fontSize: 18),
        ),
      ),
    );
  }
}
