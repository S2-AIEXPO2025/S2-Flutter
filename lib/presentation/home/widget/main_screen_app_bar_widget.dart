import 'package:expos2/core/constants/s2_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreenAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const MainScreenAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: S2Color.stratbackgroundcolor,
      scrolledUnderElevation: 0,
      elevation: 0,
      centerTitle: true,
      title: Padding(
        padding: const EdgeInsets.only(left: 7, top: 12),
        child: Row(
          children: [
            SvgPicture.asset('assets/images/icons/main/s2_title_icons.svg')
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(42);
}
