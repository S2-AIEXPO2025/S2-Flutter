import 'package:expos2/core/component/widget/s2_start_button_widget.dart';
import 'package:expos2/core/constants/s2_color.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: S2Color.backgroundpink,
      body: Padding(
        padding: const EdgeInsets.only(left: 34, right: 34, bottom: 50),
        child: Column(
          children: [
            Spacer(),
            S2StartButtonWidget(
                color: Color(0xFFC2C2C2),
                text: '시작하기',
                backgroundColor: Color(0xFFF3F3F3)
            )
          ],
        ),
      ),
    );
  }
}
