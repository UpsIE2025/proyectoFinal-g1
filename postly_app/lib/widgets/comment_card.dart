import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:postly_app/models/comment.dart';
import 'package:postly_app/widgets/app_avatar.dart';

class CommentCard extends ConsumerWidget {
  const CommentCard({super.key});

  static final commentProvider = Provider<Comment>((ref) => throw UnimplementedError());

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final c = ref.watch(commentProvider);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: AppAvatar(name: c.authorName),
        ),
        const SizedBox(width: 4),
        Expanded(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Card(
                  elevation: 0,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  color: Colors.grey.shade200,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          c.authorNameWithAuth,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 4),
                        Text(c.content),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    DateFormat("MMM/dd HH:mm").format(c.updatedAt),
                    style: const TextStyle(fontSize: 10),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
