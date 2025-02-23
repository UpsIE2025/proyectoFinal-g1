import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:postly_app/models/comment.dart';

class CommentsNotifier extends AutoDisposeFamilyAsyncNotifier<List<Comment>, int> {
  @override
  FutureOr<List<Comment>> build(int arg) {
    return List.generate(
      10,
      (i) => Comment(
        id: i + 1,
        content:
            "comment ${i + 1} weqweqweqweqwe q weqweqweqwe  qweqweqweqweqw qeqw eweqwe  qweqweqweqwe  qweqweqwe",
        createdAt: DateTime.now(),
        postId: arg,
        authorName: "Carlos Feijo",
      ),
    );
  }
}

final commentsNotifierProvider = AsyncNotifierProvider.autoDispose
    .family<CommentsNotifier, List<Comment>, int>(CommentsNotifier.new);
