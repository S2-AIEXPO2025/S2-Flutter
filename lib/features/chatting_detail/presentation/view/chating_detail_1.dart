import 'package:expos2/features/chatting/data/chat_detail_remote_data_source_1.dart';
import 'package:expos2/features/chatting_detail/presentation/widget/appbar/chatting_detail_app_bar_widget_1.dart';
import 'package:expos2/features/chatting_detail/presentation/widget/chatting_detail_text_field_widget_1.dart';
import 'package:flutter/material.dart';

class ChattingDetailScreen1 extends StatefulWidget {
  const ChattingDetailScreen1({super.key});

  @override
  State<ChattingDetailScreen1> createState() => _ChattingDetailScreen1State();
}

class _ChattingDetailScreen1State extends State<ChattingDetailScreen1> {
  @override
  Widget build(BuildContext context) {
    final chatSocketService = ChatSocketService1();
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      appBar: const ChattingDetailAppBarWidget1(),
      body: ChattingDetailTextFieldWidget1(
          chatSocketService: chatSocketService
      ),
    );
  }
}
