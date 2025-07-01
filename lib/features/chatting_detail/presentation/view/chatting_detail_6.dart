import 'package:expos2/features/chatting/data/chat_detail_remote_data_source_4.dart';
import 'package:expos2/features/chatting/data/chat_detail_remote_data_source_6.dart';
import 'package:expos2/features/chatting_detail/presentation/widget/appbar/chatting_detail_app_bar_widget_3.dart';
import 'package:expos2/features/chatting_detail/presentation/widget/appbar/chatting_detail_app_bar_widget_4.dart';
import 'package:expos2/features/chatting_detail/presentation/widget/appbar/chatting_detail_app_bar_widget_6.dart';
import 'package:expos2/features/chatting_detail/presentation/widget/chatting_detail_text_field_widget_4.dart';
import 'package:expos2/features/chatting_detail/presentation/widget/chatting_detail_text_field_widget_6.dart';
import 'package:flutter/material.dart';

class ChattingDetailScreen6 extends StatefulWidget {
  const ChattingDetailScreen6({super.key});

  @override
  State<ChattingDetailScreen6> createState() => _ChattingDetailScreen6State();
}

class _ChattingDetailScreen6State extends State<ChattingDetailScreen6> {
  @override
  Widget build(BuildContext context) {
    final chatSocketService = ChatSocketService6();
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      appBar: const ChattingDetailAppBarWidget6(),
      body: ChattingDetailTextFieldWidget6(
          chatSocketService: chatSocketService
      ),
    );
  }
}
