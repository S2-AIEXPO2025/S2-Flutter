import 'package:expos2/presentation/chating_detail/widget/chatting_detail_app_bar_widget.dart';
import 'package:expos2/presentation/chating_detail/widget/chatting_detail_text_field_widget.dart';
import 'package:flutter/material.dart';

class ChattingDetailScreen extends StatefulWidget {
  const ChattingDetailScreen({super.key});

  @override
  State<ChattingDetailScreen> createState() => _ChatingDetailScreenState();
}

class _ChatingDetailScreenState extends State<ChattingDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      appBar: const ChattingDetailAppBarWidget(),
      body: Column(
        children: [
          Spacer(),
          ChattingDetailTextFieldWidget(),
          const SizedBox(height: 33)
        ],
      ),
    );
  }
}
