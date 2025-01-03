import 'package:flutter/material.dart';

class BarProgress extends StatelessWidget {
  final double percentage;
  final Color backColor;
  final double stroke;
  final bool round;
  final Color borderColor;
  final Color progressColor;

  const BarProgress({
    Key? key,
    required this.percentage,
    required this.backColor,
    required this.stroke,
    required this.round,
    this.borderColor = Colors.pink,
    this.progressColor = Colors.pink,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: stroke,
      decoration: BoxDecoration(
        color: backColor,
        borderRadius: round ? BorderRadius.circular(stroke / 2) : null,
        border: Border.all(color: borderColor, width: 1),
      ),
      child: Stack(
        children: [
          Container(
            width: percentage / 100 * MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: progressColor,
              borderRadius: round ? BorderRadius.circular(stroke / 2) : null,
            ),
          ),
        ],
      ),
    );
  }
}
