import 'package:expos2/core/s2_style.dart';
import 'package:flutter/material.dart';

class MyPageBottomWidget extends StatelessWidget {
  const MyPageBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (){},
          child: Center(child: Text('로그아웃', style: S2TextStyle.medium13(color: S2Color.error),)),
        ),
        const SizedBox(height: 41),
      ],
    );
  }
}
