import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.freezed.dart';

@freezed
class Post with _$Post {
  const factory Post({
    required int id,
    required String title,
    required String content,
    required DateTime updatedAt,
    @Default(0) int commentsCount,
    @Default("") String authorName,
  }) = _Post;
}
