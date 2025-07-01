import 'package:expos2/features/chatting/data/chat_detail_remote_data_source_4.dart';
import 'package:expos2/features/chatting/data/chat_detail_remote_data_source_5.dart';
import 'package:expos2/features/chatting_detail/presentation/widget/appbar/chatting_detail_app_bar_widget_3.dart';
import 'package:expos2/features/chatting_detail/presentation/widget/appbar/chatting_detail_app_bar_widget_4.dart';
import 'package:expos2/features/chatting_detail/presentation/widget/appbar/chatting_detail_app_bar_widget_5.dart';
import 'package:expos2/features/chatting_detail/presentation/widget/chatting_detail_text_field_widget_4.dart';
import 'package:expos2/features/chatting_detail/presentation/widget/chatting_detail_text_field_widget_5.dart';
import 'package:flutter/material.dart';

class ChattingDetailScreen5 extends StatefulWidget {
  const ChattingDetailScreen5({super.key});

  @override
  State<ChattingDetailScreen5> createState() => _ChattingDetailScreen5State();
}

class _ChattingDetailScreen5State extends State<ChattingDetailScreen5> {
  @override
  Widget build(BuildContext context) {
    final chatSocketService = ChatSocketService5();
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      appBar: const ChattingDetailAppBarWidget5(),
      body: ChattingDetailTextFieldWidget5(
          chatSocketService: chatSocketService
      ),
    );
  }
}
