import 'package:expos2/presentation/login/view/login_screen.dart';
import 'package:expos2/presentation/main/view/main_screen.dart';
import 'package:expos2/presentation/onboarding/view/on_boarding_screen.dart';
import 'package:expos2/presentation/sign_up/view/sign_up_screen.dart';
import 'package:expos2/presentation/splash/view/splash_screen.dart';
import 'package:expos2/presentation/success/sign_up_success_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen()
    ),
    GoRoute(
        path: '/onboarding',
        builder: (context, state) => const OnBoardingScreen()
    ),
    GoRoute(
        path: '/login',
        builder: (context, state) => const LoginScreen()
    ),
    GoRoute(
        path: '/signup',
        builder: (context, state) => SignUpScreen()
    ),
    GoRoute(
        path: '/main',
        builder: (context, state) => const MainScreen()
    ),
    GoRoute(
        path: '/success',
      builder: (context, state) => const SignUpSuccessScreen()
    )
  ]
);