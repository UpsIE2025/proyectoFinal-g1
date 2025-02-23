import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.freezed.dart';

@freezed
class Post with _$Post {
  const Post._();
  const factory Post({
    required int id,
    required String title,
    required String content,
    required DateTime updatedAt,
    required String authorId,
    required String authorName,
    required String authorPictureUrl,
    required bool creatorIsAuthUser,
    required int commentsCount,
  }) = _Post;

  String get authorNameWithAuth {
    if (creatorIsAuthUser) {
      return "$authorName (Usted)";
    }
    return authorName;
  }
}
