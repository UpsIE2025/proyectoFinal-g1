import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment.freezed.dart';

@freezed
class Comment with _$Comment {
  const factory Comment({
    required int id,
    required String content,
    required DateTime createdAt,
    required int postId,
    @Default("") String authorName,
  }) = _Comment;
}
