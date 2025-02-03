import 'package:expos2/core/component/fonts/s2_textstyle.dart';
import 'package:expos2/core/constants/s2_color.dart';
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
                  borderRadius: BorderRadius.circular(12),
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
                  children: [
                    _popupMenuItem('삭제'),
                    Divider(height: 1, color: S2Color.gray01),
                    _popupMenuItem('수정'),
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

  Widget _popupMenuItem(String text) {
    return GestureDetector(
      onTap: () {
        _removePopupMenu();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: Text(
          text,
          style: S2TextStyle.regular13(color: S2Color.black),
        ),
      ),
    );
  }

  void _removePopupMenu() {
    _popupMenuOverlay?.remove();
    _popupMenuOverlay = null;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _removePopupMenu,
      child: SingleChildScrollView(
        child: Column(
          children: List.generate(
            4,
                (index) => GestureDetector(
              onTap: () {
                context.push('/chating_detail');
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 23, right: 23, bottom: 20),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/icons/chat/profile_img.png',
                      width: 40,
                      height: 40,
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '츤데레 연인 | 여자',
                          style: S2TextStyle.regular13(color: S2Color.black),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '20시간 전',
                          style: S2TextStyle.regular10(color: S2Color.gray01),
                        ),
                      ],
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTapDown: (details) {
                        _showPopupMenu(context, details.globalPosition);
                      },
                      child: SvgPicture.asset(
                        'assets/images/icons/chat/etc_icons.svg',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
