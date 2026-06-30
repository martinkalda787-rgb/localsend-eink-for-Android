import 'package:flutter/material.dart';

class CustomProgressBar extends StatelessWidget {
  final double? progress;
  final double borderRadius;
  final Color? color;

  const CustomProgressBar({
    required this.progress,
    this.borderRadius = 10,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    if (progress == null) {
      return Text(
        '...%',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Theme.of(context).colorScheme.onSurface,
        ),
      );
    }
    final percentage = (progress! * 100).toStringAsFixed(0);
    return Text(
      '$percentage%',
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Theme.of(context).colorScheme.onSurface,
      ),
    );
  }
}
