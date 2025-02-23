import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:postly_app/notifiers/posts_notifier.dart';
import 'package:postly_app/utils/app_validators.dart';
import 'package:postly_app/widgets/dialogs/async_dialog.dart';

class PostEditPage extends ConsumerStatefulWidget {
  const PostEditPage({super.key, this.id});

  final int? id;

  @override
  ConsumerState<PostEditPage> createState() => _PostEditPageState();
}

class _PostEditPageState extends ConsumerState<PostEditPage> {
  final formKey = GlobalKey<FormState>();

  late final TextEditingController titleCtrl;
  late final TextEditingController contentCtrl;

  @override
  void initState() {
    super.initState();
    String initialTitle = "";
    String initialContent = "";
    if (widget.id != null) {
      final curPost = ref.read(postByIdProvider(widget.id!));
      if (curPost != null) {
        initialTitle = curPost.title;
        initialContent = curPost.content;
      }
    }
    titleCtrl = TextEditingController(text: initialTitle);
    contentCtrl = TextEditingController(text: initialContent);
  }

  @override
  void dispose() {
    titleCtrl.dispose();
    contentCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.id == null ? "Nueva publicación" : "Editar publicación"),
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Título",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                TextFormField(
                  onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
                  controller: titleCtrl,
                  validator: AppValidators.requiredField(),
                  decoration: const InputDecoration(
                    hintText: "Escriba el título ...",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 15),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Contenido",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                TextFormField(
                  onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
                  controller: contentCtrl,
                  validator: AppValidators.requiredField(),
                  maxLines: 10,
                  decoration: const InputDecoration(
                    hintText: "Escriba aquí ...",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: onSubmit,
                    child: const Text("Publicar"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onSubmit() async {
    final isValid = formKey.currentState?.validate() ?? false;
    if (!isValid) return;
    final resp = await AsyncDialog.guard(context, () async {
      final n = ref.read(postsNotifierProvider.notifier);
      if (widget.id == null) {
        await n.createPost(titleCtrl.text, contentCtrl.text);
      } else {
        await n.updatePost(widget.id!, titleCtrl.text, contentCtrl.text);
      }
    });
    if (resp.hasError) return;
    if (!mounted) return;
    context.pop();
  }
}
