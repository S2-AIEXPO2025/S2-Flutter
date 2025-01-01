import 'package:expos2/core/component/fonts/s2_textstyle.dart';
import 'package:expos2/core/constants/s2_color.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginBottomWidget extends StatelessWidget {
  const LoginBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('계정이 없으신가요?', style: S2TextStyle.regular10(color: S2Color.black),),
        const SizedBox(width: 8),
        TextButton(
          onPressed: (){
            context.push('/signup');
          },
          child: Text('회원가입', style: S2TextStyle.regular10(color: S2Color.pink),),
          style: TextButton.styleFrom(
            minimumSize: Size.zero,
            padding: EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        )
      ],
    );
  }
}
