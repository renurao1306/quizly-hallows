import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  const GradientBackground(this.colors, {super.key, required this.child});

  final startAlignment = Alignment.topLeft;
  final endAlignment = Alignment.bottomRight;
  final List<Color> colors;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: colors,
              begin: startAlignment,
              end: endAlignment)),
      child: Center(
        child: child,
      ),
    );
  }
}
