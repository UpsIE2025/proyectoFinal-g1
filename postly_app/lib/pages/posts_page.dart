import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:postly_app/notifiers/posts_notifier.dart';
import 'package:postly_app/widgets/post_card.dart';

class PostsPage extends ConsumerWidget {
  const PostsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postsState = ref.watch(postsNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.pages),
        title: const Text("Postly"),
        actions: [const _MenuButton()],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.go("/posts/create"),
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Bienvenido, Jose A",
                style: TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Publicaciones",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: postsState.when(
              loading: () => CircularProgressIndicator(),
              error: (e, _) => Text(e.toString()),
              data: (posts) => ListView.builder(
                padding: EdgeInsets.all(10),
                physics: BouncingScrollPhysics(),
                itemCount: posts.length,
                itemBuilder: (context, index) => ProviderScope(
                  overrides: [PostCard.postProvider.overrideWithValue(posts[index])],
                  child: const PostCard(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ===============================================================
// _MenuButton
// ===============================================================

class _MenuButton extends StatelessWidget {
  const _MenuButton();

  @override
  Widget build(BuildContext context) {
    return MenuAnchor(
      builder: (context, controller, _) => IconButton(
        onPressed: () {
          if (controller.isOpen) {
            controller.close();
          } else {
            controller.open();
          }
        },
        icon: Platform.isAndroid
            ? const Icon(Icons.more_vert)
            : const Icon(Icons.more_horiz),
      ),
      menuChildren: [
        MenuItemButton(
          onPressed: () => context.go('/'),
          child: const Text("Cerrar sesión"),
        ),
      ],
    );
  }
}
