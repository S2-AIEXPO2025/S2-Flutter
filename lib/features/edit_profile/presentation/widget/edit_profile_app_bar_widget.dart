import 'package:expos2/core/s2_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class EditProfileAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const EditProfileAppBarWidget({super.key});

  static const double _kAppBarHeight = 40.0;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: S2Color.white,
      automaticallyImplyLeading: false,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: (){context.pop();},
              child: SvgPicture.asset('assets/images/icons/login/back_arrow_icons.svg', width: 8, height: 17,)),
          SvgPicture.asset('assets/images/icons/chat/s2_title_icons.svg', width: 28, height: 28,)
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(_kAppBarHeight);
}
