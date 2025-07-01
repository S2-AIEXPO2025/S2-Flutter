import 'package:expos2/features/auth/presentation/login/view/login_screen.dart';
import 'package:expos2/features/auth/presentation/sign_up/view/sign_up_screen.dart';
import 'package:expos2/features/chatting_detail/presentation/view/chating_detail_1.dart';
import 'package:expos2/features/chatting_detail/presentation/view/chatting_detail_2.dart';
import 'package:expos2/features/chatting_detail/presentation/view/chatting_detail_3.dart';
import 'package:expos2/features/chatting_detail/presentation/view/chatting_detail_4.dart';
import 'package:expos2/features/chatting_detail/presentation/view/chatting_detail_5.dart';
import 'package:expos2/features/chatting_detail/presentation/view/chatting_detail_6.dart';
import 'package:expos2/features/chatting_detail/presentation/view/chatting_detail_7.dart';
import 'package:expos2/features/chatting_detail/presentation/view/chatting_detail_8.dart';
import 'package:expos2/features/chatting_info/info1/info1_screen.dart';
import 'package:expos2/features/chatting_info/info2/info2_screen.dart';
import 'package:expos2/features/chatting_info/info3/info3_screen.dart';
import 'package:expos2/features/chatting_info/info4/info4_screen.dart';
import 'package:expos2/features/chatting_info/info5/info5_screen.dart';
import 'package:expos2/features/chatting_info/info6/info6_screen.dart';
import 'package:expos2/features/chatting_info/info7/info7_screen.dart';
import 'package:expos2/features/chatting_info/info8/info8_screen.dart';
import 'package:expos2/features/edit_profile/presentation/view/edit_profile_screen.dart';
import 'package:expos2/features/edit_pw/presentation/view/edit_pw_screen.dart';
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
        path: '/chating_detail_1',
        builder: (context, state) => const ChattingDetailScreen1()
    ),
      GoRoute(
          path: '/chating_detail_2',
          builder: (context, state) => const ChattingDetailScreen2()
      ),
    GoRoute(
        path: '/chating_detail_3',
        builder: (context, state) => const ChattingDetailScreen3()
    ),
      GoRoute(
          path: '/chating_detail_4',
          builder: (context, state) => const ChattingDetailScreen4()
      ),
    GoRoute(
        path: '/chating_detail_5',
        builder: (context, state) => const ChattingDetailScreen5()
    ),
    GoRoute(
        path: '/chating_detail_6',
        builder: (context, state) => const ChattingDetailScreen6()
    ),
    GoRoute(
        path: '/chating_detail_7',
        builder: (context, state) => const ChattingDetailScreen7()
    ),
    GoRoute(
        path: '/chating_detail_8',
        builder: (context, state) => const ChattingDetailScreen8()
    ),
    GoRoute(
        path: '/info1',
      builder: (context, state) => const Info1Screen()
    ),
    GoRoute(
        path: '/info2',
        builder: (context, state) => const Info2Screen()
    ),
    GoRoute(
        path: '/info3',
        builder: (context, state) => const Info3Screen()
    ),
    GoRoute(
        path: '/info4',
        builder: (context, state) => const Info4Screen()
    ),
    GoRoute(
        path: '/info5',
        builder: (context, state) => const Info5Screen()
    ),
    GoRoute(
        path: '/info6',
        builder: (context, state) => const Info6Screen()
    ),
    GoRoute(
        path: '/info7',
        builder: (context, state) => const Info7Screen()
    ),
    GoRoute(
        path: '/info8',
        builder: (context, state) => const Info8Screen()
    ),
      GoRoute(
          path: '/edit_profile',
          builder: (context, state) => const EditProfileScreen()
      ),
      GoRoute(
          path: '/edit_pw',
          builder: (context, state) => const EditPwScreen()
      ),
  ]
);