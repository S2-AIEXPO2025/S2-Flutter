import 'package:expos2/core/s2_color.dart';
import 'package:expos2/core/s2_style.dart';
import 'package:expos2/features/my_page/presentation/widget/my_page_app_bar_widget.dart';
import 'package:expos2/features/my_page/presentation/widget/my_page_bottom_widget.dart';
import 'package:expos2/features/my_page/presentation/widget/my_page_info_text_field_widget.dart';
import 'package:expos2/features/my_page/presentation/widget/my_page_user_info_widget.dart';
import 'package:flutter/material.dart';

class MyPageScreen extends StatelessWidget {
  const MyPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: S2Color.white,
      appBar: const MyPageAppBarWidget(),
      body: Padding(padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            Text('회원정보', style: S2TextStyle.medium15(color: S2Color.black),),
            MyPageUserInfoWidget(),
            MyPageInfoTextFieldWidget(),
            Spacer(),
            MyPageBottomWidget()
          ],
        ),
      ),
    );
  }
}
