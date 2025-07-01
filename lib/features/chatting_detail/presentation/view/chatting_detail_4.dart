import 'package:expos2/features/chatting/data/chat_detail_remote_data_source_4.dart';
import 'package:expos2/features/chatting_detail/presentation/widget/appbar/chatting_detail_app_bar_widget_3.dart';
import 'package:expos2/features/chatting_detail/presentation/widget/appbar/chatting_detail_app_bar_widget_4.dart';
import 'package:expos2/features/chatting_detail/presentation/widget/chatting_detail_text_field_widget_4.dart';
import 'package:flutter/material.dart';

class ChattingDetailScreen4 extends StatefulWidget {
  const ChattingDetailScreen4({super.key});

  @override
  State<ChattingDetailScreen4> createState() => _ChattingDetailScreen4State();
}

class _ChattingDetailScreen4State extends State<ChattingDetailScreen4> {
  @override
  Widget build(BuildContext context) {
    final chatSocketService = ChatSocketService4();
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      appBar: const ChattingDetailAppBarWidget4(),
      body: ChattingDetailTextFieldWidget4(
          chatSocketService: chatSocketService
      ),
    );
  }
}
