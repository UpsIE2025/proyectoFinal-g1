import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:postly_app/models/post.dart';

class PostsNotifier extends AsyncNotifier<List<Post>> {
  @override
  FutureOr<List<Post>> build() async {
    // final c = ref.read(graphqlClientProvider);
    // final resp = await  c.request(GGetAllPostsReq()).first;

    return [
      Post(
        id: 1,
        title: "First post",
        content: "First comment",
      ),
      Post(
        id: 2,
        title: "Second post",
        content: "Second comment",
      ),
    ];
  }
}
