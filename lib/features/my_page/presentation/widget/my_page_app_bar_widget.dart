import 'package:expos2/core/s2_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyPageAppBarWidget extends StatelessWidget implements PreferredSizeWidget{
  const MyPageAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: S2Color.white,
      automaticallyImplyLeading: false,
      scrolledUnderElevation: 0,
      elevation: 0,
      centerTitle: true,
      title:Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SvgPicture.asset('assets/images/icons/login/logo_icons.svg', width: 28, height: 28,),
          const SizedBox(width: 10,)
        ],
      )
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(40);
}
