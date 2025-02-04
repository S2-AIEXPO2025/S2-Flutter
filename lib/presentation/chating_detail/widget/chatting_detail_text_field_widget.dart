import 'package:expos2/core/component/fonts/s2_textstyle.dart';
import 'package:expos2/core/constants/s2_color.dart';
import 'package:flutter/material.dart';

class ChattingDetailTextFieldWidget extends StatefulWidget {
  const ChattingDetailTextFieldWidget({super.key});

  @override
  State<ChattingDetailTextFieldWidget> createState() =>
      _ChattingDetailTextFieldWidgetState();
}

class _ChattingDetailTextFieldWidgetState
    extends State<ChattingDetailTextFieldWidget> {
  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: S2Color.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: _isFocused ? S2Color.pink : S2Color.gray01,
          width: 1,
        ),
      ),
      height: 48,
      margin: const EdgeInsets.symmetric(horizontal: 14),
      child: TextFormField(
        focusNode: _focusNode,
        style: S2TextStyle.regular13(color: S2Color.black),
        decoration: InputDecoration(
          hintText: '연인과 대화해보세요',
          hintStyle: S2TextStyle.regular13(color: S2Color.gray01),
          border: const OutlineInputBorder(borderSide: BorderSide.none),
          contentPadding: const EdgeInsets.symmetric(horizontal: 8),
        ),
        cursorColor: S2Color.pink,
        onTapOutside: (event) {
          _focusNode.unfocus();
        },
      ),
    );
  }
}
