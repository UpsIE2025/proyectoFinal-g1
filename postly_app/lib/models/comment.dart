import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment.freezed.dart';

@freezed
class Comment with _$Comment {
  const Comment._();
  const factory Comment({
    required int id,
    required String content,
    required DateTime updatedAt,
    required int postId,
    required String authorId,
    @Default("") String authorName,
    required bool creatorIsAuthUser,
  }) = _Comment;

  String get authorNameWithAuth {
    if (creatorIsAuthUser) {
      return "$authorName (Usted)";
    }
    return authorName;
  }
}
