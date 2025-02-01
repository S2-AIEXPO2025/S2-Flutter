import 'package:expos2/core/component/fonts/s2_textstyle.dart';
import 'package:expos2/core/constants/s2_color.dart';
import 'package:expos2/presentation/home/widget/main_screen_app_bar_widget.dart';
import 'package:expos2/presentation/home/widget/main_screen_banner_widget.dart';
import 'package:expos2/presentation/home/widget/main_screen_slider_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: S2Color.stratbackgroundcolor,
      appBar: const MainScreenAppBarWidget(),
      body: Column(
        children: [
          const SizedBox(height: 12),
          const MainScreenBannerWidget(),
          Padding(padding: const EdgeInsets.only(left: 23, right: 23, top: 23, bottom: 14),
            child: Column(
              children: [
                Row(
                  children: [
                    Text('‘가나다라마사아자차카타파하\'님을 위한 AI 연인 추천',
                      style: S2TextStyle.medium15(color: S2Color.black),
                    ),
                    const SizedBox(width: 4),
                    SvgPicture.asset('assets/images/icons/main/glow_icons.svg')
                  ],
                ),
                const SizedBox(height: 12),
                MainScreenSliderWidget()
              ],
            ),
          )
        ],
      ),
    );
  }
}
