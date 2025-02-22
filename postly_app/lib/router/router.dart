import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:postly_app/pages/home_page.dart';
import 'package:postly_app/pages/welcome_page.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const WelcomePage(),
      ),
      GoRoute(
        path: "/home",
        builder: (context, state) => const HomePage(),
      ),
    ],
  );
});
