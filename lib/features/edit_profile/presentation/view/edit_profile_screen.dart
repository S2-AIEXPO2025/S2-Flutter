import 'package:expos2/core/s2_style.dart';
import 'package:expos2/features/edit_profile/presentation/widget/edit_profile_app_bar_widget.dart';
import 'package:expos2/features/edit_profile/presentation/widget/edit_profile_info_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: S2Color.white,
      appBar: const EditProfileAppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 12,),
            Text('프로필 정보 수정', style: S2TextStyle.medium15(color: S2Color.black),),
            const SizedBox(height: 24),
            EditProfileInfoWidget(),
            Spacer(),
            GestureDetector(
              onTap: (){context.pop();},
              child: Container(
                padding : const EdgeInsets.symmetric(horizontal: 121),
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
