import 'package:expos2/features/chatting/data/chat_detail_remote_data_source_4.dart';
import 'package:expos2/features/chatting/data/chat_detail_remote_data_source_7.dart';
import 'package:expos2/features/chatting_detail/presentation/widget/appbar/chatting_detail_app_bar_widget_3.dart';
import 'package:expos2/features/chatting_detail/presentation/widget/appbar/chatting_detail_app_bar_widget_4.dart';
import 'package:expos2/features/chatting_detail/presentation/widget/appbar/chatting_detail_app_bar_widget_7.dart';
import 'package:expos2/features/chatting_detail/presentation/widget/chatting_detail_text_field_widget_4.dart';
import 'package:expos2/features/chatting_detail/presentation/widget/chatting_detail_text_field_widget_7.dart';
import 'package:flutter/material.dart';

class ChattingDetailScreen7 extends StatefulWidget {
  const ChattingDetailScreen7({super.key});

  @override
  State<ChattingDetailScreen7> createState() => _ChattingDetailScreen7State();
}

class _ChattingDetailScreen7State extends State<ChattingDetailScreen7> {
  @override
  Widget build(BuildContext context) {
    final chatSocketService = ChatSocketService7();
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      appBar: const ChattingDetailAppBarWidget7(),
      body: ChattingDetailTextFieldWidget7(
          chatSocketService: chatSocketService
      ),
    );
  }
}
