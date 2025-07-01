import 'package:expos2/features/chatting/data/chat_detail_remote_data_source_4.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:expos2/core/s2_textstyle.dart';
import 'package:expos2/core/s2_color.dart';

class ChattingDetailTextFieldWidget4 extends StatefulWidget {
  final ChatSocketService4 chatSocketService;

  const ChattingDetailTextFieldWidget4({
    super.key,
    required this.chatSocketService,
  });

  @override
  State<ChattingDetailTextFieldWidget4> createState() =>
      _ChattingDetailTextFieldWidget4State();
}

class _ChattingDetailTextFieldWidget4State extends State<ChattingDetailTextFieldWidget4> {
  final FocusNode _focusNode = FocusNode();
  final TextEditingController _controller = TextEditingController();
  final List<ChatMessage> _messages = [];
  bool _isFocused = false;
  String _text = '';

  @override
  void initState() {
    super.initState();

    widget.chatSocketService.connect(onMessage: (message) {
      setState(() {
        _messages.add(ChatMessage(
          sender: "AI",
          text: message,
          time: DateTime.now(),
        ));
      });
    });

    _focusNode.addListener(() {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    });
    _controller.addListener(() {
      setState(() {
        _text = _controller.text;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _controller.dispose();
    widget.chatSocketService.disconnect();
    super.dispose();
  }

  void _handleSend() {
    if (_text.trim().isEmpty) return;

    setState(() {
      _messages.add(ChatMessage(
        sender: "나",
        text: _text.trim(),
        time: DateTime.now(),
      ));
      _controller.clear();
    });

    widget.chatSocketService.sendMessage(_text.trim());
  }

  String formatTime(DateTime time) {
    final hour = time.hour == 0 ? 12 : time.hour > 12 ? time.hour - 12 : time.hour;
    final period = time.hour >= 12 ? '오후' : '오전';
    final minute = time.minute.toString().padLeft(2, '0');
    return '$period $hour시 $minute분';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.all(12),
            itemCount: _messages.length,
            itemBuilder: (context, index) {
              final msg = _messages[index];
              final isMine = msg.sender == "나";

              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Align(
                  alignment: isMine ? Alignment.centerRight : Alignment.centerLeft,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      if (!isMine) ...[
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.7,
                          ),
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                            decoration: BoxDecoration(
                              color: S2Color.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              msg.text,
                              style: S2TextStyle.regular13(color: S2Color.black),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 6),
                          child: Text(
                            formatTime(msg.time),
                            style: S2TextStyle.regular11(color: S2Color.gray01),
                          ),
                        ),
                      ] else ...[
                        Padding(
                          padding: const EdgeInsets.only(right: 6),
                          child: Text(
                            formatTime(msg.time),
                            style: S2TextStyle.regular11(color: S2Color.gray01),
                          ),
                        ),
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.7,
                          ),
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                            decoration: BoxDecoration(
                              color: S2Color.pink,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              msg.text,
                              style: S2TextStyle.regular13(color: S2Color.white),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: S2Color.white,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: _isFocused ? S2Color.pink : S2Color.gray01,
              width: 1,
            ),
          ),
          height: 48,
          margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 33),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  focusNode: _focusNode,
                  controller: _controller,
                  style: S2TextStyle.regular13(color: S2Color.black),
                  decoration: InputDecoration(
                    hintText: '연인과 대화해보세요',
                    hintStyle: S2TextStyle.regular13(color: S2Color.gray01),
                    border: const OutlineInputBorder(borderSide: BorderSide.none),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                  ),
                  cursorColor: S2Color.pink,
                  onTapOutside: (_) => _focusNode.unfocus(),
                ),
              ),
              if (_text.trim().isNotEmpty)
                GestureDetector(
                  onTap: _handleSend,
                  child: Container(
                    margin: const EdgeInsets.only(right: 6),
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    width: 49,
                    height: 34,
                    decoration: BoxDecoration(
                      color: S2Color.pink,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: SvgPicture.asset(
                      'assets/images/icons/chatting_detail/send_icon.svg',
                    ),
                  ),
                )
            ],
          ),
        ),
      ],
    );
  }
}

class ChatMessage {
  final String sender;
  final String text;
  final DateTime time;

  ChatMessage({
    required this.sender,
    required this.text,
    required this.time,
  });
}