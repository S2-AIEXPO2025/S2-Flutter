import 'package:expos2/features/chatting/data/chat_detail_remote_data_source_2.dart';
import 'package:expos2/features/chatting_detail/presentation/widget/appbar/chatting_detail_app_bar_widget_2.dart';
import 'package:expos2/features/chatting_detail/presentation/widget/chatting_detail_text_field_widget_2.dart';
import 'package:flutter/material.dart';

class ChattingDetailScreen2 extends StatefulWidget {
  const ChattingDetailScreen2({super.key});

  @override
  State<ChattingDetailScreen2> createState() => _ChattingDetailScreen2State();
}

class _ChattingDetailScreen2State extends State<ChattingDetailScreen2> {
  @override
  Widget build(BuildContext context) {
    final chatSocketService = ChatSocketService2();
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      appBar: const ChattingDetailAppBarWidget2(),
      body: ChattingDetailTextFieldWidget2(
          chatSocketService: chatSocketService
      ),
    );
  }
}
