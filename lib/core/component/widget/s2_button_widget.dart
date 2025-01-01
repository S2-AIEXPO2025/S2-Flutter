import 'package:expos2/core/component/fonts/s2_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class S2ButtonWidget extends StatelessWidget {
  final Color color;
  final String text;
  final Color? backgroundColor;

  const S2ButtonWidget({
    required this.color,
    required this.text,
    required this.backgroundColor,
    super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        context.push('/main');
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
          child: Text(text, style: S2TextStyle.medium15(color: color),),
        ),
      ),
    );
  }
}
