import 'package:expos2/core/constants/s2_color.dart';
import 'package:expos2/presentation/login/widget/login_app_bar_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: S2Color.white,
      appBar: const LoginAppBarWidget(),
    );
  }
}
