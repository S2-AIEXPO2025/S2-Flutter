import 'package:expos2/core/s2_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyPageUserInfoWidget extends StatelessWidget {
  const MyPageUserInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 16, bottom: 14),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: S2Color.startbackgroundcolor,
            borderRadius: BorderRadius.circular(1000)
          ),
          child: Text('en_hy12345', style: S2TextStyle.medium13(color: S2Color.pink),),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('가나다라마바사아자차카타파하님', style: S2TextStyle.semiBold20(color: S2Color.black),),
                Text('안녕하세요 🙌🏻', style: S2TextStyle.semiBold20(color: S2Color.black),),
              ],
            ),
            SvgPicture.asset('assets/images/icons/my_page/profile_icons.svg', width: 55, height: 55,)
          ],
        )
      ],
    );
  }
}
