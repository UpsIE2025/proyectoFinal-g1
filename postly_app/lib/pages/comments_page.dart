import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:postly_app/notifiers/comments_notifier.dart';
import 'package:postly_app/widgets/comment_card.dart';

class CommentsPage extends ConsumerWidget {
  const CommentsPage({super.key, required this.postId});

  final int postId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final commentsState = ref.watch(commentsNotifierProvider(postId));
    return Scaffold(
      appBar: AppBar(title: const Text("Comentarios")),
      body: Column(
        children: [
          const SizedBox(height: 10),
          Expanded(
            child: commentsState.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (e, _) => Text(e.toString()),
              data: (comments) => ListView.separated(
                padding: const EdgeInsets.all(10),
                physics: const BouncingScrollPhysics(),
                itemCount: comments.length,
                separatorBuilder: (context, index) => const SizedBox(height: 10),
                itemBuilder: (context, index) => ProviderScope(
                  overrides: [
                    CommentCard.commentProvider.overrideWithValue(comments[index]),
                  ],
                  child: const CommentCard(),
                ),
              ),
            ),
          ),
          const _CommentInput(),
        ],
      ),
    );
  }
}

// ===============================================================
// Comment Input
// ===============================================================

class _CommentInput extends StatefulWidget {
  const _CommentInput();

  @override
  State<_CommentInput> createState() => __CommentInputState();
}

class __CommentInputState extends State<_CommentInput> {
  final ctrl = TextEditingController();

  @override
  void dispose() {
    ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: ctrl,
              onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                border: const OutlineInputBorder(borderSide: BorderSide.none),
                fillColor: Colors.grey.shade100,
                filled: true,
                hintText: "Escriba un comentario ...",
              ),
              onChanged: (_) => setState(() {}),
              onSubmitted: (_) {
                onSend();
              },
            ),
          ),
          const SizedBox(width: 10),
          GestureDetector(
            onTap: ctrl.text == "" ? null : onSend,
            child: Icon(
              Icons.send_rounded,
              color: ctrl.text.isEmpty ? Colors.grey : Colors.blue,
            ),
          )
        ],
      ),
    );
  }

  void onSend() {
    ctrl.text = "";
    setState(() {});
    print("send comment");
  }
}
