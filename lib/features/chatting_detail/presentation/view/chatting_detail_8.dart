import 'package:expos2/features/chatting/data/chat_detail_remote_data_source_4.dart';
import 'package:expos2/features/chatting/data/chat_detail_remote_data_source_8.dart';
import 'package:expos2/features/chatting_detail/presentation/widget/appbar/chatting_detail_app_bar_widget_3.dart';
import 'package:expos2/features/chatting_detail/presentation/widget/appbar/chatting_detail_app_bar_widget_4.dart';
import 'package:expos2/features/chatting_detail/presentation/widget/appbar/chatting_detail_app_bar_widget_8.dart';
import 'package:expos2/features/chatting_detail/presentation/widget/chatting_detail_text_field_widget_4.dart';
import 'package:expos2/features/chatting_detail/presentation/widget/chatting_detail_text_field_widget_8.dart';
import 'package:flutter/material.dart';

class ChattingDetailScreen8 extends StatefulWidget {
  const ChattingDetailScreen8({super.key});

  @override
  State<ChattingDetailScreen8> createState() => _ChattingDetailScreen8State();
}

class _ChattingDetailScreen8State extends State<ChattingDetailScreen8> {
  @override
  Widget build(BuildContext context) {
    final chatSocketService = ChatSocketService8();
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      appBar: const ChattingDetailAppBarWidget8(),
      body: ChattingDetailTextFieldWidget8(
          chatSocketService: chatSocketService
      ),
    );
  }
}
