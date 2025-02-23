import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:postly_app/graphql/__generated__/schema.schema.gql.dart';
import 'package:postly_app/graphql/post/__generated__/create_post.req.gql.dart';
import 'package:postly_app/graphql/post/__generated__/get_all_posts.req.gql.dart';
import 'package:postly_app/models/post.dart';
import 'package:postly_app/notifiers/graphql_client.dart';

class PostsNotifier extends AsyncNotifier<List<Post>> {
  @override
  FutureOr<List<Post>> build() async {
    final c = ref.read(graphqlClientProvider);
    final resp = await c.request(GGetAllPostsReq()).first;
    return resp.data!.posts
        .map(
          (p) => Post(
            id: p.id,
            title: p.title,
            content: p.content,
            updatedAt: DateTime.parse(p.updatedAt.value).toLocal(),
            authorName: "Otro",
            commentsCount: 12,
          ),
        )
        .toList();
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
          title: title,
          content: content,
          updatedAt: DateTime.parse(resp.data!.postCreate.post!.updatedAt.value),
          authorName: "Jose Al",
        ),
      ],
    );
  }
}

final postsNotifierProvider =
    AsyncNotifierProvider<PostsNotifier, List<Post>>(PostsNotifier.new);
