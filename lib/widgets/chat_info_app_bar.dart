import 'package:flutter_svg/flutter_svg.dart';
import 'package:expos2/core/s2_style.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

class ChatInfoAppBar extends StatelessWidget implements PreferredSizeWidget{
  const ChatInfoAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: S2Color.white,
      scrolledUnderElevation: 0,
      elevation: 0,
      centerTitle: true,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: (){context.pop();},
              child: SvgPicture.asset('assets/images/icons/chat/back_arrow_icons.svg', height: 17, width: 8,),
            ),
            SvgPicture.asset('assets/images/icons/chat/s2_title_icons.svg', width: 28, height: 28,),
          ],
        ),
      ),
    );
  }
  static const double _kAppBarHeight = 40.0;

  @override
  Size get preferredSize => const Size.fromHeight(_kAppBarHeight);
}
