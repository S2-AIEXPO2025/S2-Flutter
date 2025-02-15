import 'package:expos2/core/s2_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum S2TextFieldType {
  password,
}

class EditPwWidget extends StatefulWidget {
  final Widget? suffix;
  final S2TextFieldType type;
  final TextInputType textInputType;

  const EditPwWidget({
    this.suffix,
    this.type = S2TextFieldType.password,
    this.textInputType = TextInputType.text,
    super.key,
  });

  @override
  State<EditPwWidget> createState() => _EditPwWidgetState();
}

class _EditPwWidgetState extends State<EditPwWidget> {
  bool _isCurrentPasswordVisible = false;
  bool _isNewPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;

  final TextEditingController _currentPwController = TextEditingController();
  final TextEditingController _newPwController = TextEditingController();
  final TextEditingController _confirmPwController = TextEditingController();

  final FocusNode _currentPwFocusNode = FocusNode();
  final FocusNode _newPwFocusNode = FocusNode();
  final FocusNode _confirmPwFocusNode = FocusNode();

  String _passwordMatchMessage = "";

  @override
  void initState() {
    super.initState();
    _currentPwFocusNode.addListener(() => setState(() {}));
    _newPwFocusNode.addListener(() => setState(() {}));
    _confirmPwFocusNode.addListener(() => setState(() {}));

    _newPwController.addListener(_validatePasswords);
    _confirmPwController.addListener(_validatePasswords);
  }

  @override
  void dispose() {
    _currentPwFocusNode.dispose();
    _newPwFocusNode.dispose();
    _confirmPwFocusNode.dispose();
    _currentPwController.dispose();
    _newPwController.dispose();
    _confirmPwController.dispose();
    super.dispose();
  }

  void _validatePasswords() {
    setState(() {
      if (_newPwController.text.isEmpty || _confirmPwController.text.isEmpty) {
        _passwordMatchMessage = "";
      } else if (_newPwController.text == _confirmPwController.text) {
        _passwordMatchMessage = "비밀번호가 일치합니다.";
      } else {
        _passwordMatchMessage = "비밀번호가 일치하지 않습니다.";
      }
    });
  }

  Widget _buildPasswordField({
    required String label,
    required String hint,
    required TextEditingController controller,
    required FocusNode focusNode,
    required bool isPasswordVisible,
    required VoidCallback onToggleVisibility,
  }) {
    final iconColor = focusNode.hasFocus ? S2Color.pink : S2Color.gray02;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 40,
          child: TextField(
            controller: controller,
            focusNode: focusNode,
            cursorColor: const Color(0xFFF73A93),
            cursorWidth: 1,
            cursorHeight: 16,
            keyboardType: widget.textInputType,
            obscureText: !isPasswordVisible && widget.type == S2TextFieldType.password,
            obscuringCharacter: "⦁",
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: const TextStyle(fontSize: 13, color: Color(0xFFB0B0B0)),
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(width: 2, color: Color(0xFFB0B0B0)),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFF73A93), width: 2),
              ),
              suffixIcon: widget.type == S2TextFieldType.password ? GestureDetector(
                onTap: onToggleVisibility,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: SvgPicture.asset(
                    isPasswordVisible
                        ? "assets/images/icons/edit_pw/eyes_open_icons.svg"
                        : "assets/images/icons/edit_pw/eyes_close_icons.svg",
                    color: iconColor,
                    width: 13,
                    height: 13,
                  ),
                ),
              )
                  : null,
            ),
            style: const TextStyle(fontSize: 15, color: Colors.black),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildPasswordField(
          label: '현재 비밀번호',
          hint: '현재 비밀번호를 입력해주세요',
          controller: _currentPwController,
          focusNode: _currentPwFocusNode,
          isPasswordVisible: _isCurrentPasswordVisible,
          onToggleVisibility: () {
            setState(() {
              _isCurrentPasswordVisible = !_isCurrentPasswordVisible;
            });
          },
        ),
        const SizedBox(height: 44),
        _buildPasswordField(
          label: '새로운 비밀번호',
          hint: '새로운 비밀번호를 입력해주세요',
          controller: _newPwController,
          focusNode: _newPwFocusNode,
          isPasswordVisible: _isNewPasswordVisible,
          onToggleVisibility: () {
            setState(() {
              _isNewPasswordVisible = !_isNewPasswordVisible;
            });
          },
        ),
        const SizedBox(height: 20),
        _buildPasswordField(
          label: '새로운 비밀번호 확인',
          hint: '새로운 비밀번호를 입력해주세요',
          controller: _confirmPwController,
          focusNode: _confirmPwFocusNode,
          isPasswordVisible: _isConfirmPasswordVisible,
          onToggleVisibility: () {
            setState(() {
              _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
            });
          },
        ),
        const SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              _passwordMatchMessage,
              style: S2TextStyle.regular10(color: _passwordMatchMessage == "비밀번호가 일치합니다."
              ? S2Color.green : S2Color.error)
            ),
          ],
        ),
      ],
    );
  }
}
