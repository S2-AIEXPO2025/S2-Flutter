import 'package:expos2/features/auth/presentation/login/view/login_screen.dart';
import 'package:expos2/features/auth/presentation/sign_up/view/sign_up_screen.dart';
import 'package:expos2/features/chatting_detail/presentation/view/chating_detail_screen.dart';
import 'package:expos2/features/chatting_info/info1/info1_screen.dart';
import 'package:expos2/features/chatting_info/info2/info2_screen.dart';
import 'package:expos2/features/chatting_info/info3/info3_screen.dart';
import 'package:expos2/features/chatting_info/info4/info4_screen.dart';
import 'package:expos2/features/chatting_info/info5/info5_screen.dart';
import 'package:expos2/features/chatting_info/info6/info6_screen.dart';
import 'package:expos2/features/chatting_info/info7/info7_screen.dart';
import 'package:expos2/features/chatting_info/info8/info8_screen.dart';
import 'package:expos2/features/main/presentation/widget/main_bottom_navigation_bar_widget.dart';
import 'package:expos2/features/on_boarding/presentation/view/on_boarding_screen.dart';
import 'package:expos2/features/success/sign_up_success_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
        path: '/',
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
    ),
    GoRoute(
        path: '/chatting',
        routes: [
          GoRoute(
              path: 'info/:number',
              builder: (context, state) {
                final number = int.parse(state.pathParameters['number'] ?? '1');
                switch (number) {
                  case 1: return const Info1Screen();
                  case 2: return const Info2Screen();
                  case 3: return const Info3Screen();
                  case 4: return const Info4Screen();
                  case 5: return const Info5Screen();
                  case 6: return const Info6Screen();
                  case 7: return const Info7Screen();
                  case 8: return const Info8Screen();
                  default: throw Exception('Invalid info screen number');
                }
              }
          ),
        ]
    ),
  ]
);