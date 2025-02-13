import 'package:expos2/core/s2_style.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyPageBottomWidget extends StatelessWidget {
  const MyPageBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: (){
                  context.push('/edit_profile');
                },
                child: Text('프로필 정보 수정',
                  style: S2TextStyle.medium13(
                    decoration: TextDecoration.underline,
                    color: S2Color.gray02
                  )
                ),
              ),
              GestureDetector(
                onTap: (){},
                child: Text('비밀번호 변경',
                  style: S2TextStyle.medium13(
                      color: S2Color.gray02,
                      decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          const SizedBox(height: 48),
          GestureDetector(
            onTap: (){},
            child: Center(child: Text('로그아웃', style: S2TextStyle.medium13_2(color: S2Color.error),)),
          ),
          const SizedBox(height: 41),
        ],
      ),
    );
  }
}
