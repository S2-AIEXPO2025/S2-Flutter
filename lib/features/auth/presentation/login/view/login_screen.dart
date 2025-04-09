import 'package:expos2/core/s2_textstyle.dart';
import 'package:expos2/core/s2_color.dart';
import 'package:expos2/features/auth/presentation/login/widget/login_app_bar_widget.dart';
import 'package:expos2/features/auth/presentation/login/widget/login_body_text_widget.dart';
import 'package:expos2/features/auth/presentation/login/widget/login_bottom_widget.dart';
import 'package:expos2/widgets/s2_button_widget.dart';
import 'package:expos2/widgets/s2_textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController idController;
  late TextEditingController pwdController;
  late FocusNode idFocusNode;
  late FocusNode pwdFocusNode;
  bool areAllFieldsFilled = false;
  bool isLoading = false;
  bool _isChecked = false;
  String? errorMessage;

  @override
  void initState() {
    super.initState();
    idController = TextEditingController();
    pwdController = TextEditingController();
    idFocusNode = FocusNode();
    pwdFocusNode = FocusNode();

    // 텍스트 필드 리스너 추가
    idController.addListener(_checkIfFieldsFilled);
    pwdController.addListener(_checkIfFieldsFilled);
  }

  void _checkIfFieldsFilled() {
    final filled = idController.text.isNotEmpty && pwdController.text.isNotEmpty;
    if (filled != areAllFieldsFilled) {
      setState(() {
        areAllFieldsFilled = filled;
      });
    }
  }

  @override
  void dispose() {
    idController.dispose();
    pwdController.dispose();
    idFocusNode.dispose();
    pwdFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: S2Color.white,
      appBar: const LoginAppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.only(top: 130, left: 44, right: 44),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const LoginBodyTextWidget(),
            const SizedBox(height: 36),
            S2TextFieldWidget(
              controller: idController,
              focusNode: idFocusNode,
              hint: '아이디를 입력해주세요',
            ),
            const SizedBox(height: 12),
            S2TextFieldWidget(
              controller: pwdController,
              focusNode: pwdFocusNode,
              hint: '비밀번호를 입력해주세요',
              type: S2TextFieldType.password,
            ),
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _isChecked = !_isChecked;
                    });
                  },
                  child: Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                      color: _isChecked ? S2Color.pink : S2Color.white,
                      border: Border.all(
                        color: const Color(0xFFDBDBDB),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: _isChecked
                        ? Icon(
                      Icons.check,
                      size: 8,
                      color: S2Color.white,
                    )
                        : null,
                  ),
                ),
                const SizedBox(width: 4),
                Text(
                  '로그인 상태 유지',
                  style: S2TextStyle.regular10(color: S2Color.black),
                ),
              ],
            ),
            const SizedBox(height: 8),
            GestureDetector(
              onTap: areAllFieldsFilled
                  ? () {
                context.push('/bottom');
              }
                  : null,
              child: S2ButtonWidget(
                color: areAllFieldsFilled ? Colors.white : const Color(0xFF868686),
                text: '로그인',
                backgroundColor: areAllFieldsFilled ? S2Color.pink : const Color(0xFFE4E4E4),
              ),
            ),
            const SizedBox(height: 40),
            const LoginBottomWidget()
          ],
        ),
      ),
    );
  }
}
