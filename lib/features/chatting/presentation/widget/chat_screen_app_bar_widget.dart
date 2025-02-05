import 'package:expos2/core/s2_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatScreenAppBarWidget extends StatelessWidget implements PreferredSizeWidget{
  const ChatScreenAppBarWidget({super.key});

  static const double _kAppBarHeight = 42.0;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: S2Color.white,
      scrolledUnderElevation: 0,
      elevation: 0,
      centerTitle: true,
      title: Padding(padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        child: Row(
          children: [
            SvgPicture.asset('assets/images/icons/chat/s2_title_icons.svg'),
          ],
        )
      ),
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(_kAppBarHeight);
}
