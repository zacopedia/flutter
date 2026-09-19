import 'package:flutter/material.dart';

class DecorativeBlob extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final double opacity;
  final double rotation;

  const DecorativeBlob({
    super.key,
    required this.width,
    required this.height,
    required this.color,
    this.opacity = 0.15,
    this.rotation = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: rotation,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color.withOpacity(opacity),
          borderRadius: BorderRadius.circular(1000),
        ),
      ),
    );
  }
}
