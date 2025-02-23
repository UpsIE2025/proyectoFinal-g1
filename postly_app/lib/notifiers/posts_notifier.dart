import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:postly_app/models/post.dart';

class PostsNotifier extends AsyncNotifier<List<Post>> {
  @override
  FutureOr<List<Post>> build() async {
    // final c = ref.read(graphqlClientProvider);
    // final resp = await  c.request(GGetAllPostsReq()).first;

    return List.generate(
      10,
      (i) => Post(
        id: i + 1,
        title: "Titulo ${i + 1}",
        content: "Contenido ${i + 1}",
        updatedAt: DateTime.now(),
        commentsCount: i * 10 + 1,
        authorName: "Jose Alvez",
      ),
    );
  }
}

final postsNotifierProvider =
    AsyncNotifierProvider<PostsNotifier, List<Post>>(PostsNotifier.new);
