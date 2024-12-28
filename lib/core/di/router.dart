import 'package:expos2/presentation/login/view/login_screen.dart';
import 'package:expos2/presentation/on_boarding/view/on_boarding_screen.dart';
import 'package:expos2/presentation/splash/view/splash_screen.dart';
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
    )
  ]
);