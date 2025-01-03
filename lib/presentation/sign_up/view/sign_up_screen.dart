import 'package:expos2/core/component/fonts/s2_textstyle.dart';
import 'package:expos2/core/component/widget/bar_progress.dart';
import 'package:expos2/core/component/widget/s2_button_widget.dart';
import 'package:expos2/core/component/widget/s2_custom_textfield_widget.dart';
import 'package:expos2/core/constants/s2_color.dart';
import 'package:expos2/presentation/sign_up/widget/sign_up_app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController nicknameController = TextEditingController();
  final TextEditingController idController = TextEditingController();
  final TextEditingController pwdController = TextEditingController();
  final TextEditingController pwdCheckController = TextEditingController();
  final TextEditingController birthController = TextEditingController();
  String? selectedGender;

  double _progress = 0.0;

  @override
  void dispose() {
    nicknameController.dispose();
    idController.dispose();
    pwdController.dispose();
    pwdCheckController.dispose();
    birthController.dispose();
    super.dispose();
  }

  void _updateProgress() {
    double progress = 0.0;
    if (nicknameController.text.isNotEmpty) progress += 1;
    if (birthController.text.isNotEmpty) progress += 1;
    if (selectedGender != null) progress += 1;
    if (idController.text.isNotEmpty) progress += 1;
    if (pwdController.text.isNotEmpty) progress += 1;
    if (pwdCheckController.text == pwdController.text && pwdCheckController.text.isNotEmpty) progress += 1;

    setState(() {
      _progress = (progress / 6) * 100;
    });
  }

  bool _isFormValid() {
    return nicknameController.text.isNotEmpty &&
        birthController.text.isNotEmpty &&
        selectedGender != null &&
        idController.text.isNotEmpty &&
        pwdController.text.isNotEmpty &&
        pwdCheckController.text == pwdController.text && pwdCheckController.text.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: S2Color.white,
      appBar: const SignUpAppBarWidget(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.1,
            vertical: 20,
          ),
          child: Column(
            children: [
              BarProgress(
                percentage: _progress,
                backColor: Colors.white,
                stroke: 16,
                round: true,
                borderColor: Colors.pink,
                progressColor: Colors.pink,
              ),
              const SizedBox(height: 79),
              CustomTextField(
                label: '닉네임',
                hintText: '10자 이내로 입력해주세요',
                controller: nicknameController,
                onChanged: (_) => _updateProgress(),
              ),
              const SizedBox(height: 40),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 2,
                    child: CustomTextField(
                      label: '생년월일',
                      hintText: '',
                      controller: birthController,
                      type: S2CustomTextFieldType.birth,
                      onChanged: (_) => _updateProgress(),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Flexible(
                    flex:2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('성별', style: S2TextStyle.medium15(color: S2Color.black)),
                            Text('*', style: S2TextStyle.medium15(color: S2Color.error)),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _genderButton('여자', 'female', screenWidth),
                            const SizedBox(width: 8),
                            _genderButton('남자', 'male', screenWidth),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              CustomTextField(
                label: '아이디',
                hintText: '10자 이상으로 입력해주세요',
                controller: idController,
                onChanged: (_) => _updateProgress(),
              ),
              const SizedBox(height: 40),
              CustomTextField(
                label: '비밀번호',
                hintText: '20자 이상 영어와 특수문자를 포함하여 입력해주세요',
                controller: pwdController,
                type: S2CustomTextFieldType.password,
                onChanged: (_) => _updateProgress(),
              ),
              const SizedBox(height: 40),
              CustomTextField(
                label: '비밀번호 확인',
                hintText: '20자 이상 영어와 특수문자를 포함하여 입력해주세요',
                controller: pwdCheckController,
                type: S2CustomTextFieldType.password,
                onChanged: (_) => _updateProgress(),
              ),
              const SizedBox(height: 36),
              GestureDetector(
                onTap: () {
                  context.push('/success');
                },
                child: S2ButtonWidget(
                  color: _isFormValid() ? Colors.white : const Color(0xFF868686),
                  text: '회원가입 하기',
                  backgroundColor: _isFormValid() ? Colors.pink : const Color(0xFFDCDCDC),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _genderButton(String label, String gender, double screenWidth) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedGender = gender;
          _updateProgress();
        });
      },
      child: Container(
        width: screenWidth * 0.17,
        padding: const EdgeInsets.only(left: 20, right: 20, top: 3, bottom: 3),
        decoration: BoxDecoration(
          border: Border.all(
            color: selectedGender == gender ? S2Color.pink : S2Color.gray01,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: selectedGender == gender ? S2Color.pink : S2Color.gray01,
          ),
        ),
      ),
    );
  }
}
