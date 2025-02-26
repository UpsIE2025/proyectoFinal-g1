import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:postly_app/graphql/__generated__/schema.schema.gql.dart';
import 'package:postly_app/graphql/post/__generated__/create_post.req.gql.dart';
import 'package:postly_app/graphql/post/__generated__/get_all_posts.req.gql.dart';
import 'package:postly_app/graphql/post/__generated__/update_post.req.gql.dart';
import 'package:postly_app/models/post.dart';
import 'package:postly_app/models/user.dart';
import 'package:postly_app/notifiers/auth_notifier.dart';
import 'package:postly_app/notifiers/graphql_client.dart';
import 'package:postly_app/notifiers/utils.dart';

class PostsNotifier extends AsyncNotifier<List<Post>> {
  User? _curUser;

  @override
  FutureOr<List<Post>> build() async {
    _curUser = ref.watch(authUserProvider);
    return _fetchAll();
  }

  Future<List<Post>> _fetchAll() async {
    final c = ref.read(graphqlClientProvider);
    final resp = await c.request(GGetAllPostsReq()).first;
    return resp.data!.posts
        .map(
          (p) => Post(
            id: p.id,
            title: p.title,
            content: p.content,
            updatedAt: DateTime.parse(p.updatedAt.value).toLocal(),
            authorId: p.authorId,
            authorName: p.authorInfo.name,
            authorPictureUrl: p.authorInfo.pictureUrl,
            creatorIsAuthUser: _curUser!.id == p.authorId,
            commentsCount: p.commentCount,
          ),
        )
        .toList();
  }

  Future<void> refetch() async {
    await ignoreFutureError(future);
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() {
      return _fetchAll();
    });
  }

  Future<void> createPost(String title, String content) async {
    final c = ref.read(graphqlClientProvider);
    final resp = await c
        .request(
          GCreatePostReq(
            (b) => b
              ..vars.input = GPostCreateInput(
                (b2) => b2
                  ..title = title
                  ..content = content,
              ).toBuilder(),
          ),
        )
        .first;
    if (resp.data!.postCreate.error != null) {
      throw resp.data!.postCreate.error!.message;
    }
    await update(
      (cur) => [
        ...cur,
        Post(
          id: resp.data!.postCreate.post!.id,
          title: resp.data!.postCreate.post!.title,
          content: resp.data!.postCreate.post!.content,
          updatedAt:
              DateTime.parse(resp.data!.postCreate.post!.updatedAt.value).toLocal(),
          authorId: resp.data!.postCreate.post!.authorId,
          authorName: resp.data!.postCreate.post!.authorInfo.name,
          authorPictureUrl: resp.data!.postCreate.post!.authorInfo.pictureUrl,
          commentsCount: 0,
          creatorIsAuthUser: true,
        ),
      ],
    );
  }

  Future<void> updatePost(int id, String title, String content) async {
    final c = ref.read(graphqlClientProvider);
    final resp = await c
        .request(
          GUpdatePostReq(
            (b) => b
              ..vars.id = id
              ..vars.input = GPostUpdateInput(
                (b2) => b2
                  ..title = title
                  ..content = content,
              ).toBuilder(),
          ),
        )
        .first;
    if (resp.data!.postUpdate.error != null) {
      throw resp.data!.postUpdate.error!.message;
    }
    await update(
      (cur) => [
        for (final c in cur)
          if (c.id == id)
            c.copyWith(
              id: resp.data!.postUpdate.post!.id,
              title: resp.data!.postUpdate.post!.title,
              content: resp.data!.postUpdate.post!.content,
              updatedAt:
                  DateTime.parse(resp.data!.postUpdate.post!.updatedAt.value).toLocal(),
            )
          else
            c
      ],
    );
  }
}

final postsNotifierProvider =
    AsyncNotifierProvider<PostsNotifier, List<Post>>(PostsNotifier.new);

final postByIdProvider = Provider.autoDispose.family<Post?, int>((ref, postId) {
  final s = ref.watch(postsNotifierProvider);
  return s.maybeWhen(
    data: (data) => data.singleWhereOrNull((p) => p.id == postId),
    orElse: () => null,
  );
});
