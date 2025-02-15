import 'package:expos2/core/s2_style.dart';
import 'package:expos2/features/edit_pw/presentation/widget/edit_pw_app_bar_widget.dart';
import 'package:expos2/features/edit_pw/presentation/widget/edit_pw_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EditPwScreen extends StatelessWidget {
  const EditPwScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: S2Color.white,
      appBar: const EditPwAppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 39),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 12),
            Text('비밀번호 변경', style: S2TextStyle.medium15(color: S2Color.black),),
            const SizedBox(height: 100),
            EditPwWidget(),
            Spacer(),
            GestureDetector(
              onTap: (){context.pop();},
              child: Container(
                padding : const EdgeInsets.symmetric(horizontal: 120),
                height: 48,
                decoration: BoxDecoration(
                    color: S2Color.pink,
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Center(child: Text('변경사항 저장', style: S2TextStyle.regular15(color: S2Color.white),)),
              ),
            ),
            const SizedBox(height: 34),
          ],
        ),
      ),
    );
  }
}
