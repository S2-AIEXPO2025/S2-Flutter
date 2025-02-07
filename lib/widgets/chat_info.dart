import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:expos2/widgets/chat_info_app_bar.dart';
import 'package:expos2/core/s2_color.dart';
import 'package:expos2/core/s2_style.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

class ChatInfo extends StatefulWidget {

  final Image imagePath;
  final String title;
  final String explain;
  final String write;

  const ChatInfo({super.key,
    required this.imagePath,
    required this.title,
    required this.explain,
    required this.write
  });

  @override
  State<ChatInfo> createState() => _ChatInfoState();
}

class _ChatInfoState extends State<ChatInfo> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(402, 874),
      child: Scaffold(
        backgroundColor: S2Color.white,
        appBar: const ChatInfoAppBar(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              widget.imagePath,
              Padding(padding: const EdgeInsets.only(left: 12, top: 20, bottom: 13),
                child: Text(widget.title, style: S2TextStyle.semiBold20(color: S2Color.black),),
              ),
              Container(
                  width: 376,
                  height: 46,
                  margin: const EdgeInsets.only(left: 12),
                  padding: const EdgeInsets.only(left: 24),
                  decoration: BoxDecoration(
                    color: S2Color.startbackgroundcolor,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(widget.explain, style: S2TextStyle.regular13(color: S2Color.black),),
                    ],
                  ),
                ),
              const SizedBox(height: 24,),
              Center(
                child: Container(
                  width: 376,
                  height: 1,
                  decoration: BoxDecoration(
                    color: S2Color.gray03
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('캐릭터 소개', style: S2TextStyle.regular13(color: S2Color.black),),
                    const SizedBox(height: 12),
                    Text(widget.write, style: S2TextStyle.regular11(color: S2Color.gray01),),
                  ],
                ),
              ),
              const SizedBox(height: 18),
              Center(
                child: GestureDetector(
                  onTap: (){
                    context.push('/chatting_detail');
                  },
                  child: Container(
                    width: 300,
                    height: 54,
                    decoration: BoxDecoration(
                      color: S2Color.pink,
                      borderRadius: BorderRadius.circular(1000)
                    ),
                    child: Center(
                      child: Text('대화하기', style: S2TextStyle.medium20(color: S2Color.white),),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 18),
            ],
          ),
        ),
      ),
    );
  }
}
