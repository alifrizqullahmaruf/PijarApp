import 'package:flutter/material.dart';

class PicturesCard extends StatelessWidget {
  final String imagePath;
  final double height;
  final double width;
  final double borderRadius;

  const PicturesCard({
    super.key,
    required this.imagePath,
    this.height = 100.0,
    this.width = 100.0,
    this.borderRadius = 10.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
