import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ErrorDialog extends StatelessWidget {
  const ErrorDialog(
    this.error, {
    super.key,
    this.title,
  });
  final String? title;
  final Object error;

  static void show(BuildContext context, Object error) => showDialog(
        context: context,
        builder: (_) => ErrorDialog(error),
      );

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: ErrorDialogContent(error, title: title),
    );
  }
}

class ErrorDialogContent extends StatelessWidget {
  const ErrorDialogContent(
    this.error, {
    super.key,
    this.title,
  });

  final String? title;
  final Object error;

  @override
  Widget build(BuildContext context) {
    final msg = error.toString();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      width: double.infinity,
      constraints: BoxConstraints(maxHeight: msg.length <= 34 ? 260 : 280),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.error_outline,
            color: Color.fromARGB(255, 184, 32, 32),
            size: 40,
          ),
          const SizedBox(height: 10),
          Text(
            title ?? "¡Ha ocurrido un problema!",
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Scrollbar(
              child: SingleChildScrollView(
                child: Text(
                  msg,
                  style: const TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(onPressed: context.pop, child: Text("Ok")),
        ],
      ),
    );
  }
}
