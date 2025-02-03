import 'package:expos2/core/constants/s2_color.dart';
import 'package:expos2/presentation/chating/widget/chat_screen_app_bar_widget.dart';
import 'package:expos2/presentation/chating/widget/chat_screen_body_widget.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: S2Color.white,
      appBar: const ChatScreenAppBarWidget(),
      body: const Column(
        children: [
          const SizedBox(height: 13),
          ChatScreenBodyWidget()
        ],
      ),
    );
  }
}
