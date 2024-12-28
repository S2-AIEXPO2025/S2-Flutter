import 'package:expos2/presentation/splash/view/splash_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen()
    )
  ]
);