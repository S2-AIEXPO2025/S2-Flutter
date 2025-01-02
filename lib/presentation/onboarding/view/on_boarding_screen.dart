import 'package:carousel_slider/carousel_slider.dart';
import 'package:expos2/core/component/fonts/s2_textstyle.dart';
import 'package:expos2/core/component/widget/s2_start_button_widget.dart';
import 'package:expos2/core/constants/s2_color.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text('data', style: S2TextStyle.ExtraBold40(color: S2Color.black)),
            const SizedBox(width: 4),
            Image.asset('assets/images/icons/onboarding/heart_icons.png'),
          ],
        ),
        const SizedBox(height: 68),
        Text(
          'AI 연인과 채팅으로\n편하게 연애의 경험을\n시작합니다. 취향에 맞는 AI를\n통해 연애 경험을 쌓습니다.',
          style: S2TextStyle.medium20(color: S2Color.black),
        ),
        const SizedBox(height: 90),
        Center(child: Image.asset('assets/images/icons/onboarding/main.png')),
      ],
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text('talking', style: S2TextStyle.ExtraBold40(color: S2Color.black)),
            const SizedBox(width: 4),
            Image.asset('assets/images/icons/onboarding/talking_icons.png'),
          ],
        ),
        const SizedBox(height: 68),
        Text(
          'AI 채팅으로 빠르게 연결되는\n대화를 할 수 있습니다.\nAI 연인과 24시간 언제든 얘기를\n나눌 수 있습니다.',
          style: S2TextStyle.medium20(color: S2Color.black),
        ),
        const SizedBox(height: 90),
        Center(child: Image.asset('assets/images/icons/onboarding/main.png')),
      ],
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text('feeling', style: S2TextStyle.ExtraBold40(color: S2Color.black)),
            const SizedBox(width: 4),
            Image.asset('assets/images/icons/onboarding/feeling_icons.png'),
          ],
        ),
        const SizedBox(height: 68),
        Text(
          'AI 연인을 통해 연애할 때의\n감정 그대로를 느껴보실 수 있습니다.\n실제 연애할 때의 감정을\n느끼고 연습할 수 있습니다.',
          style: S2TextStyle.medium20(color: S2Color.black),
        ),
        const SizedBox(height: 90),
        Center(child: Image.asset('assets/images/icons/onboarding/main.png')),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: S2Color.backgroundpink,
      body: Padding(
        padding: const EdgeInsets.only(left: 34, right: 34, top: 78, bottom: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider(
              items: _pages,
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height * 0.744,
                viewportFraction: 1.0,
                initialPage: 0,
                enableInfiniteScroll: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
            ),
            //const SizedBox(height: 61),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                _pages.length,
                    (index) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  width: 13,
                  height: 13,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == index ? S2Color.pink : Color(0xFFDADADA),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            S2StartButtonWidget(
              color: _currentIndex == 2 ? Colors.white : const Color(0xFFC2C2C2),
              text: '시작하기',
              backgroundColor: _currentIndex == 2 ? Colors.pink : const Color(0xFFF3F3F3),
            ),
          ],
        ),
      ),
    );
  }
}
