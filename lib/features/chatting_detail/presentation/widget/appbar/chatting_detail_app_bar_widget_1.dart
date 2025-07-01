import 'package:expos2/core/s2_textstyle.dart';
import 'package:expos2/core/s2_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class ChattingDetailAppBarWidget1 extends StatelessWidget implements PreferredSizeWidget{
  const ChattingDetailAppBarWidget1({super.key});

  static const double _kAppBarHeight = 49.0;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Color(0xFFF9F9F9),
      scrolledUnderElevation: 0,
      elevation: 0,
      centerTitle: true,
      title: Padding(padding: const EdgeInsets.symmetric(horizontal: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: (){context.pop();},
                child: SvgPicture.asset('assets/images/icons/chat/back_arrow_icons.svg', width: 17, height: 17,),
              ),
              Center(child: Text('가정적인 연인', style: S2TextStyle.regular13(color: S2Color.pink),)),
              Image.asset('assets/images/icons/chat/profile_img.png', width: 34, height: 34)
            ],
          )
      ),
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(_kAppBarHeight);
}
