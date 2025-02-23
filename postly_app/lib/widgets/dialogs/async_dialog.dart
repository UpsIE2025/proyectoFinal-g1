import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:postly_app/widgets/dialogs/error_dialog.dart';

class AsyncDialogResult<T> {
  const AsyncDialogResult(this.value, this.error);
  final T? value;
  final Object? error;
  bool get hasError => error != null;
}

class AsyncDialog extends StatelessWidget {
  const AsyncDialog({super.key, required this.stream});
  final Stream<int> stream;

  static Future<AsyncDialogResult<T>> guard<T>(
      BuildContext context, Future<T> Function() task) async {
    final streamController = StreamController<int>();
    final dialogFuture = showDialog(
        context: context, builder: (_) => AsyncDialog(stream: streamController.stream));
    T? value;
    Object? error;
    try {
      value = await task();
      streamController.add(1);
    } catch (e) {
      error = e;
      streamController.addError(e);
    }
    streamController.close();
    await dialogFuture;
    return AsyncDialogResult(value, error);
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: StreamBuilder(
        stream: stream,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return ErrorDialogContent(snapshot.error!);
          }
          if (snapshot.hasData && context.mounted && context.canPop()) {
            context.pop();
          }
          return const _Loader();
        },
      ),
    );
  }
}

class _Loader extends StatelessWidget {
  const _Loader();

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxHeight: 150),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(Theme.of(context).primaryColor),
            ),
            const SizedBox(height: 10),
            const Text("Espere..."),
          ],
        ),
      ),
    );
  }
}
