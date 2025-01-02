import 'package:expos2/core/constants/s2_style.dart';
import 'package:flutter/material.dart';

class S2StartButtonWidget extends StatelessWidget {
  final Color color;
  final String text;
  final Color? backgroundColor;
  final VoidCallback onPressed;

  const S2StartButtonWidget({
    required this.color,
    required this.text,
    required this.backgroundColor,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 62,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            text,
            style: S2TextStyle.medium20(color: color),
          ),
        ),
      ),
    );
  }
}
