import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:postly_app/models/post.dart';
import 'package:postly_app/widgets/app_avatar.dart';

class PostCard extends ConsumerWidget {
  const PostCard({super.key});

  static final postProvider = Provider<Post>((ref) => throw UnimplementedError());

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final p = ref.watch(postProvider);
    return Card(
      child: InkWell(
        onTap: () {
          context.go("/posts/comments/${p.id}");
        },
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              _PostHeader(
                p.authorName,
                p.title,
                p.updatedAt,
                onEdit: p.id % 2 == 0 ? () => context.go("/posts/edit/${p.id}") : null,
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: Text(
                  p.title,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              SizedBox(
                width: double.infinity,
                child: Text(
                  p.content,
                  textAlign: TextAlign.justify,
                ),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "${p.commentsCount} comentarios",
                  style: TextStyle(
                    color: Colors.black.withAlpha(100),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _PostHeader extends StatelessWidget {
  const _PostHeader(this.authorName, this.title, this.updatedAt, {required this.onEdit});

  final String authorName;
  final String title;
  final DateTime updatedAt;
  final VoidCallback? onEdit;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppAvatar(name: authorName),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                authorName,
                style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              Text(
                DateFormat("MMM/dd HH:mm").format(updatedAt),
                style: const TextStyle(fontSize: 10),
              ),
            ],
          ),
        ),
        if (onEdit != null)
          SizedBox(
            height: 18.0,
            width: 18.0,
            child: IconButton(
              padding: EdgeInsets.all(0.0),
              icon: Icon(Icons.edit, size: 18.0),
              onPressed: onEdit,
            ),
          )
      ],
    );
  }
}
