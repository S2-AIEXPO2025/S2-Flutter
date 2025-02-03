import 'package:expos2/core/component/fonts/s2_textstyle.dart';
import 'package:expos2/core/constants/s2_color.dart';
import 'package:flutter/material.dart';

class ChatScreenBodyWidget extends StatefulWidget {
  const ChatScreenBodyWidget({super.key});

  @override
  State<ChatScreenBodyWidget> createState() => _ChatScreenBodyWidgetState();
}

class _ChatScreenBodyWidgetState extends State<ChatScreenBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 100),
        Center(
          child:Text('아직 채팅한 기록이 없습니다.', style: S2TextStyle.regular13(color: S2Color.gray01),)
        )
      ],
    );
  }
}
