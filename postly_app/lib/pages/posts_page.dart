import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:postly_app/notifiers/auth_notifier.dart';
import 'package:postly_app/notifiers/fcm_service.dart';
import 'package:postly_app/notifiers/posts_notifier.dart';
import 'package:postly_app/widgets/app_avatar.dart';
import 'package:postly_app/widgets/dialogs/async_dialog.dart';
import 'package:postly_app/widgets/post_card.dart';

class PostsPage extends ConsumerWidget {
  const PostsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(fcmNotiStreamProvider, (previous, next) {
      final data = next.valueOrNull;
      if (data == null) return;
      if (!context.mounted) return;
      context.go("/posts/comments/${data.postId}");
    });
    final postsState = ref.watch(postsNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.pages),
        title: const Text("Postly"),
        actions: [const _MenuButton()],
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.go("/posts/create"),
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          const _Header(),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
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
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (e, _) => Text(e.toString()),
              data: (posts) => RefreshIndicator(
                onRefresh: () async {
                  final n = ref.read(postsNotifierProvider.notifier);
                  await n.refetch();
                },
                child: ListView.builder(
                  padding: const EdgeInsets.all(10),
                  physics: const AlwaysScrollableScrollPhysics(
                    parent: BouncingScrollPhysics(),
                  ),
                  itemCount: posts.isEmpty ? 1 : posts.length,
                  itemBuilder: (context, index) => posts.isEmpty
                      ? const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 30),
                          child: Center(
                            child: Text("No hay publicaciones"),
                          ),
                        )
                      : ProviderScope(
                          overrides: [
                            PostCard.postProvider.overrideWithValue(posts[index])
                          ],
                          child: const PostCard(),
                        ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Header extends ConsumerWidget {
  const _Header();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authUserProvider);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(35),
          bottomRight: Radius.circular(35),
        ),
      ),
      child: Row(
        children: [
          AppAvatar(
            maxRadius: 55,
            bordered: true,
            name: user.name,
            pictureUrl: user.pictureUrl,
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Bienvenido,",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  user.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  user.email,
                  style: const TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
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

class _MenuButton extends ConsumerWidget {
  const _MenuButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authNotifier = ref.watch(authNotifierProvider.notifier);
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
          leadingIcon: const Icon(Icons.logout),
          onPressed: () async {
            final resp = await AsyncDialog.guard(context, () async {
              await authNotifier.logout();
            });
            if (resp.hasError) return;
            if (!context.mounted) return;
            context.go("/");
          },
          child: const Text("Cerrar sesión"),
        ),
      ],
    );
  }
}
