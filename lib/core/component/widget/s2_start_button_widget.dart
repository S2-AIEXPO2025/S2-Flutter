import 'package:expos2/core/constants/s2_style.dart';
import 'package:expos2/core/di/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class S2StartButtonWidget extends StatelessWidget {

  final Color color;
  final String text;
  final Color? backgroundColor;

  const S2StartButtonWidget({
    required this.color,
    required this.text,
    required this.backgroundColor,
    super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        context.push('/login');//나중에 채우기
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 62,
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
          child: Text(text, style: S2TextStyle.medium20(color: color),),
        ),
      ),
    );
  }
}
