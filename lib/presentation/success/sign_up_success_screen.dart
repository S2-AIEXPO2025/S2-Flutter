import 'package:expos2/core/component/fonts/s2_textstyle.dart';
import 'package:expos2/core/constants/s2_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class SignUpSuccessScreen extends StatefulWidget {
  const SignUpSuccessScreen({super.key});

  @override
  State<SignUpSuccessScreen> createState() => _SignUpSuccessScreenState();
}

class _SignUpSuccessScreenState extends State<SignUpSuccessScreen> {

  @override
  void initState() {
    super.initState();
    const signUpSuccessDelay = Duration(milliseconds: 1500);
    Future.delayed(signUpSuccessDelay).then(
          (value) => context.go("/main"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: S2Color.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/images/icons/sign_up/success_icons.svg'),
            const SizedBox(height: 28),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('회원가입', style: S2TextStyle.semiBold30(color: S2Color.black),),
                    Text('이', style: S2TextStyle.regular30(color: S2Color.black),)
                  ],
                ),
                Text('완료되었습니다.', style: S2TextStyle.regular30(color: S2Color.black),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
