import 'package:expos2/core/constants/s2_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class SignUpAppBarWidget extends StatelessWidget implements PreferredSizeWidget{
  const SignUpAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: S2Color.white,
      automaticallyImplyLeading: false,
      scrolledUnderElevation: 0,
      elevation: 0,
      centerTitle: true,
      title: Row(
        children: [
          Row(
            children: [
              SizedBox(width: 7),
              GestureDetector(
                child: SvgPicture.asset('assets/images/icons/login/back_arrow_icons.svg'),
                onTap: ()
                {context.pop();},
              ),
              SizedBox(width: 315),
              SvgPicture.asset('assets/images/icons/login/logo_icons.svg')
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(40);
}
