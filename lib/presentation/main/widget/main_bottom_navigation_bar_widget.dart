import 'package:expos2/core/component/fonts/s2_textstyle.dart';
import 'package:expos2/core/constants/s2_color.dart';
import 'package:expos2/presentation/chating/view/chat_screen.dart';
import 'package:expos2/presentation/home/view/main_screen.dart';
import 'package:expos2/presentation/my_page/view/my_page_screen.dart';
import 'package:expos2/presentation/search/view/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainBottomNavigationBarWidget extends StatefulWidget {
  const MainBottomNavigationBarWidget({super.key});

  @override
  State<MainBottomNavigationBarWidget> createState() => _MainBottomNavigationBarWidgetState();
}

class _MainBottomNavigationBarWidgetState extends State<MainBottomNavigationBarWidget> {
  var _index = 0;

  BottomNavigationBarItem _buildNavigationItem({
    required String iconPath,
    required String label,
    required int index
  }) {
    return BottomNavigationBarItem(
        icon: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 12),
            SvgPicture.asset(
              iconPath,
              color: _index == index ? S2Color.pink : S2Color.gray01,
            ),
            const SizedBox(height: 4,)
          ],
        ),
      label: label
    );
  }

  @override
  Widget build(BuildContext context) {

    const List<Widget> pages = [
      MainScreen(),
      SearchScreen(),
      ChatScreen(),
      MyPageScreen()
    ];

    return Scaffold(
      body: pages[_index],
      bottomNavigationBar : BottomNavigationBar(
          currentIndex: _index,
          onTap: (int index) {
            setState(() {
              _index = index;
            });
          },
          backgroundColor: S2Color.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: S2Color.pink,
          unselectedItemColor: S2Color.gray01,
          selectedLabelStyle: S2TextStyle.regular10(color: S2Color.pink),
          unselectedLabelStyle: S2TextStyle.regular10(color: S2Color.gray01),
          items: [
            _buildNavigationItem(
                iconPath: 'assets/images/icons/core/home_icons.svg',
                label: '홈',
                index: 0
            ),
            _buildNavigationItem(
                iconPath: 'assets/images/icons/core/search_icons.svg',
                label: '검색',
                index: 1
            ),
            _buildNavigationItem(
                iconPath: 'assets/images/icons/core/chat_icons.svg',
                label: '채팅',
                index: 2
            ),
            _buildNavigationItem(
                iconPath: 'assets/images/icons/core/my_page_icons.svg',
                label: '내 정보',
                index: 3
            ),
          ],
      ),
    );
  }
}
