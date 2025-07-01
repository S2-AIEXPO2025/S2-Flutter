import 'package:expos2/features/chatting/data/chat_detail_remote_data_source_3.dart';
import 'package:expos2/features/chatting_detail/presentation/widget/appbar/chatting_detail_app_bar_widget_3.dart';
import 'package:expos2/features/chatting_detail/presentation/widget/chatting_detail_text_field_widget_3.dart';
import 'package:flutter/material.dart';

class ChattingDetailScreen3 extends StatefulWidget {
  const ChattingDetailScreen3({super.key});

  @override
  State<ChattingDetailScreen3> createState() => _ChattingDetailScreen3State();
}

class _ChattingDetailScreen3State extends State<ChattingDetailScreen3> {
  @override
  Widget build(BuildContext context) {
    final chatSocketService = ChatSocketService3();
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      appBar: const ChattingDetailAppBarWidget3(),
      body: ChattingDetailTextFieldWidget3(
          chatSocketService: chatSocketService
      ),
    );
  }
}
