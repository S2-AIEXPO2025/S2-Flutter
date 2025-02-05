import 'package:expos2/app.dart';
import 'package:expos2/features/authentication/presentation/login/view/login_screen.dart';
import 'package:expos2/features/authentication/presentation/sign_up/view/sign_up_screen.dart';
import 'package:expos2/features/chatting_detail/presentation/view/chating_detail_screen.dart';
import 'package:expos2/features/main/presentation/widget/main_bottom_navigation_bar_widget.dart';
import 'package:expos2/features/onboarding/presentation/view/on_boarding_screen.dart';
import 'package:expos2/features/success/sign_up_success_screen.dart';
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
        path: '/success',
        builder: (context, state) => const SignUpSuccessScreen()
    ),
    GoRoute(
        path: '/bottom',
        builder: (context, state) => const MainBottomNavigationBarWidget()
    ),
    GoRoute(
        path: '/chatting_detail',
        builder: (context, state) => const ChattingDetailScreen()
    )
  ]
);