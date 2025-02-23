import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:postly_app/pages/comments_page.dart';
import 'package:postly_app/pages/posts_page.dart';
import 'package:postly_app/pages/post_edit_page.dart';
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
        path: "/posts",
        builder: (context, state) => const PostsPage(),
        routes: [
          GoRoute(
            path: "comments/:postId",
            builder: (context, state) {
              final postId = state.pathParameters["postId"] ?? "1";
              return CommentsPage(
                postId: int.tryParse(postId) ?? 1,
              );
            },
          ),
          GoRoute(
            path: "create",
            builder: (context, state) => const PostEditPage(),
          ),
          GoRoute(
            path: "edit/:postId",
            builder: (context, state) {
              final postId = state.pathParameters["postId"] ?? "1";
              return PostEditPage(
                id: int.tryParse(postId) ?? 1,
              );
            },
          ),
        ],
      ),
    ],
  );
});
