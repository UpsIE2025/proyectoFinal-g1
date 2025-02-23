import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:postly_app/graphql/__generated__/schema.schema.gql.dart';
import 'package:postly_app/graphql/comment/__generated__/create_comment.req.gql.dart';
import 'package:postly_app/graphql/post/__generated__/get_post_comments.req.gql.dart';
import 'package:postly_app/models/comment.dart';
import 'package:postly_app/notifiers/auth_notifier.dart';
import 'package:postly_app/notifiers/graphql_client.dart';

class CommentsNotifier extends AutoDisposeFamilyAsyncNotifier<List<Comment>, int> {
  @override
  FutureOr<List<Comment>> build(int arg) async {
    final u = ref.watch(authUserProvider);
    final c = ref.read(graphqlClientProvider);
    final resp = await c
        .request(GGetPostCommentsReq(
          (b) => b..vars.postId = arg,
        ))
        .first;
    return resp.data!.post!.comments
        .map((c) => Comment(
              id: c.id,
              content: c.content,
              updatedAt: DateTime.parse(c.updatedAt.value).toLocal(),
              postId: c.postId,
              authorId: c.authorId,
              creatorIsAuthUser: u.id == c.authorId,
            ))
        .toList();
  }

  Future<void> createComment(String content) async {
    final c = ref.read(graphqlClientProvider);
    final resp = await c
        .request(GCreateCommentReq(
          (b) => b
            ..vars.input = GCommentCreateInput(
              (b2) => b2
                ..postId = arg
                ..content = content,
            ).toBuilder(),
        ))
        .first;
    if (resp.data!.commentCreate.error != null) {
      throw resp.data!.commentCreate.error!.message;
    }
    await update((cur) => [
          ...cur,
          Comment(
            id: resp.data!.commentCreate.comment!.id,
            content: resp.data!.commentCreate.comment!.content,
            updatedAt: DateTime.parse(resp.data!.commentCreate.comment!.updatedAt.value)
                .toLocal(),
            postId: resp.data!.commentCreate.comment!.postId,
            authorId: resp.data!.commentCreate.comment!.authorId,
            creatorIsAuthUser: true,
          )
        ]);
  }
}

final commentsNotifierProvider = AsyncNotifierProvider.autoDispose
    .family<CommentsNotifier, List<Comment>, int>(CommentsNotifier.new);
