import 'package:expos2/core/s2_style.dart';
import 'package:flutter/material.dart';

class MyPageInfoTextFieldWidget extends StatelessWidget {
  const MyPageInfoTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 36),
        Text('닉네임', style: S2TextStyle.medium13(color: S2Color.gray01),),
        Container(
          margin: const EdgeInsets.only(top: 8),
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 16),
          decoration: BoxDecoration(
            border: Border.all(color: S2Color.gray03),
            borderRadius: BorderRadius.circular(5)
          ),
          child: Text('가나다라마바사아자차카타파하', style: S2TextStyle.regular15(color: S2Color.black),),
        ),
        const SizedBox(height: 24),
        Text('성별', style: S2TextStyle.medium13(color: S2Color.gray01),),
        Container(
          margin: const EdgeInsets.only(top: 8),
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 61),
          decoration: BoxDecoration(
              border: Border.all(color: S2Color.gray03),
              borderRadius: BorderRadius.circular(5)
          ),
          child: Text('남자', style: S2TextStyle.regular15(color: S2Color.black),),
        ),
        const SizedBox(height: 24),
        Text('생일', style: S2TextStyle.medium13(color: S2Color.gray01),),
        Container(
          margin: const EdgeInsets.only(top: 8),
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 22),
          decoration: BoxDecoration(
              border: Border.all(color: S2Color.gray03),
              borderRadius: BorderRadius.circular(5)
          ),
          child: Text('2007/11/11', style: S2TextStyle.regular15(color: S2Color.black),),
        ),
      ],
    );
  }
}
