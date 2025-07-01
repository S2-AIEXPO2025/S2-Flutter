import 'package:expos2/core/s2_textstyle.dart';
import 'package:expos2/core/s2_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class ChatScreenBodyWidget extends StatefulWidget {
  const ChatScreenBodyWidget({super.key});

  @override
  State<ChatScreenBodyWidget> createState() => _ChatScreenBodyWidgetState();
}

class _ChatScreenBodyWidgetState extends State<ChatScreenBodyWidget> {
  OverlayEntry? _popupMenuOverlay;

  void _showPopupMenu(BuildContext context, Offset position) {
    _popupMenuOverlay = OverlayEntry(
      builder: (context) => Stack(
        children: [
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: _removePopupMenu,
            child: Container(color: Colors.transparent),
          ),
          Positioned(
            left: position.dx - 100,
            top: position.dy + 10,
            child: Material(
              color: Colors.transparent,
              child: Container(
                width: 120,
                decoration: BoxDecoration(
                  color: S2Color.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        _removePopupMenu();
                        _showDeleteConfirmDialog(context);
                      },
                      child: _popupMenuItem('삭제'),
                    ),
                    Divider(height: 1, color: S2Color.gray01),
                    GestureDetector(
                      onTap: () {
                        _removePopupMenu();
                      },
                      child: _popupMenuItem('연인 정보 수정'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
    Overlay.of(context).insert(_popupMenuOverlay!);
  }

  void _showDeleteConfirmDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext dialogContext) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(
              color: const Color(0xFFFF37B9).withOpacity(0.2),
              width: 1,
            ),
          ),
          elevation: 100,
          backgroundColor: S2Color.white,
          child: Container(
            margin: const EdgeInsets.only(top: 43),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  children: [
                    Text(
                      '"츤데레 연인 | 남자"와의',
                      style: S2TextStyle.regular15(color: S2Color.black),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '채팅을 삭제하시겠습니까?',
                      style: S2TextStyle.regular15(color: S2Color.black),
                    ),
                  ],
                ),
                const SizedBox(height: 34),
                Divider(height: 1, color: S2Color.gray02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () => Navigator.of(dialogContext).pop(),
                      child: Text(
                        '취소',
                        style: S2TextStyle.regular15(color: S2Color.gray02),
                      ),
                    ),
                    const SizedBox(width: 50),
                    Container(
                      height: 36,
                      width: 1,
                      color: S2Color.gray02,
                    ),
                    const SizedBox(width: 50),
                    TextButton(
                      onPressed: () {
                        Navigator.of(dialogContext).pop();
                      },
                      child: Text(
                        '삭제',
                        style: S2TextStyle.regular15(color: S2Color.error),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _popupMenuItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Text(
        text,
        style: S2TextStyle.regular13(color: S2Color.black),
      ),
    );
  }

  void _removePopupMenu() {
    _popupMenuOverlay?.remove();
    _popupMenuOverlay = null;
  }

  Widget _chatItem({
    required BuildContext context,
    required String name,
    required String time,
    required String imagePath,
    required String detailRoute,
  }) {
    return GestureDetector(
      onTap: () {
        context.push(detailRoute);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 23, right: 23, bottom: 20),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                imagePath,
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: S2TextStyle.regular13(color: S2Color.black),
                ),
                const SizedBox(height: 4),
                Text(
                  time,
                  style: S2TextStyle.regular10(color: S2Color.gray01),
                ),
              ],
            ),
            const Spacer(),
            Builder(
              builder: (innerContext) => GestureDetector(
                onTapDown: (details) {
                  _showPopupMenu(innerContext, details.globalPosition);
                },
                child: SvgPicture.asset(
                  'assets/images/icons/chat/etc_icons.svg',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _removePopupMenu,
      child: SingleChildScrollView(
        child: Column(
          children: [
            _chatItem(
              context: context,
              name: '가정적인 연인 | 남자',
              time: '20시간 전',
              imagePath: 'assets/images/icons/chatting_info/couple1.png',
              detailRoute: '/chating_detail_1',
            ),
            _chatItem(
              context: context,
              name: '친구같은 연인 | 남자',
              time: '3일 전',
              imagePath: 'assets/images/icons/chatting_info/couple2.png',
              detailRoute: '/chating_detail_2',
            ),
            _chatItem(
              context: context,
              name: '귀여운 연인 | 여자',
              time: '1주 전',
              imagePath: 'assets/images/icons/chatting_info/couple3.png',
              detailRoute: '/chating_detail_3',
            ),
            _chatItem(
              context: context,
              name: '활발한 연인 | 남자',
              time: '2주 전',
              imagePath: 'assets/images/icons/chatting_info/couple4.png',
              detailRoute: '/chating_detail_4',
            ),
            _chatItem(
              context: context,
              name: '나를 귀여워하는 연인 | 남자',
              time: '2주 전',
              imagePath: 'assets/images/icons/chatting_info/couple5.png',
              detailRoute: '/chating_detail_5',
            ),
            _chatItem(
              context: context,
              name: '사극체 연인 | 남자',
              time: '2주 전',
              imagePath: 'assets/images/icons/chatting_info/couple6.png',
              detailRoute: '/chating_detail_6',
            ),
            _chatItem(
              context: context,
              name: '츤데레 연인 | 남자',
              time: '2주 전',
              imagePath: 'assets/images/icons/chatting_info/couple7.png',
              detailRoute: '/chating_detail_7',
            ),
            _chatItem(
              context: context,
              name: '보호하고 싶은 연인 | 남자',
              time: '2주 전',
              imagePath: 'assets/images/icons/chatting_info/couple8.png',
              detailRoute: '/chating_detail_8',
            ),
          ],
        ),
      ),
    );
  }
}
