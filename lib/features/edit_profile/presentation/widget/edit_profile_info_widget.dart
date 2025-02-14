import 'package:expos2/core/s2_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EditProfileInfoWidget extends StatefulWidget {
  const EditProfileInfoWidget({super.key});

  @override
  State<EditProfileInfoWidget> createState() => _EditProfileInfoWidgetState();
}

class _EditProfileInfoWidgetState extends State<EditProfileInfoWidget> {
  String? selectedGender;
  final TextEditingController _nicknameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadProfileData();
  }

  Future<void> _loadProfileData() async{
    setState(() {
      _nicknameController.text = 'notfound';
      selectedGender;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: SvgPicture.asset('assets/images/icons/my_page/profile_icons.svg'),
        ),
        const SizedBox(height: 28),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '닉네임',
              style: S2TextStyle.medium13_2(color: S2Color.gray01),
            ),
            SizedBox(
              height: 38,
              child: TextField(
                controller: _nicknameController,
                cursorColor: S2Color.pink,
                cursorWidth: 1,
                cursorHeight: 16,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 2, color: S2Color.gray02)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: S2Color.pink, width: 2),
                  ),
                ),
                style: S2TextStyle.regular15(color: S2Color.black),
                keyboardType: TextInputType.text,
              ),
            ),
            const SizedBox(height: 32),
            Text(
              '성별',
              style: S2TextStyle.medium13_2(color: S2Color.gray01),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = '남자';
                    });
                  },
                  child: Container(
                    height: 48,
                    width: 148,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: selectedGender == '남자'
                              ? S2Color.pink
                              : S2Color.gray03),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      '남자',
                      style: S2TextStyle.regular15(
                        color: selectedGender == '남자'
                            ? S2Color.pink
                            : S2Color.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 28),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = '여자';
                    });
                  },
                  child: Container(
                    height: 48,
                    width: 148,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: selectedGender == '여자'
                              ? S2Color.pink
                              : S2Color.gray03),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      '여자',
                      style: S2TextStyle.regular15(
                        color: selectedGender == '여자'
                            ? S2Color.pink
                            : S2Color.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
