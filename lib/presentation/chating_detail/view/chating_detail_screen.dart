import 'package:expos2/core/constants/s2_color.dart';
import 'package:flutter/material.dart';

class ChattingDetailScreen extends StatefulWidget {
  const ChattingDetailScreen({super.key});

  @override
  State<ChattingDetailScreen> createState() => _ChatingDetailScreenState();
}

class _ChatingDetailScreenState extends State<ChattingDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: S2Color.backgroundpink,
    );
  }
}
