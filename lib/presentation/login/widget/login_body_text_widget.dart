import 'package:expos2/core/component/fonts/s2_textstyle.dart';
import 'package:expos2/core/constants/s2_color.dart';
import 'package:flutter/material.dart';

class LoginBodyTextWidget extends StatelessWidget {
  const LoginBodyTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('안녕하세요 ˙ᵕ˙\nS2입니다.', style: S2TextStyle.semiBold30(color: S2Color.black),);
  }
}
