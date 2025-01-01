import 'package:expos2/core/constants/s2_color.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1500)).then(
          (value) => context.go("/onboarding"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: S2Color.pink,
      body: Center(
        child: Image.asset('assets/images/logo/s2_title 1.png'),
      ),
    );
  }
}

