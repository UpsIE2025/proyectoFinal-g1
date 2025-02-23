import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:postly_app/notifiers/auth_notifier.dart';
import 'package:postly_app/widgets/dialogs/async_dialog.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.blue,
      ),
      child: const Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.pages,
                  color: Colors.blue,
                  size: 140,
                ),
              ),
              Text(
                "Postly App",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 300,
                child: _LoginButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _LoginButton extends ConsumerWidget {
  const _LoginButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authNotifier = ref.watch(authNotifierProvider.notifier);
    return OutlinedButton(
      onPressed: () async {
        final resp = await AsyncDialog.guard(context, () async {
          await authNotifier.login();
        });
        if (resp.hasError) return;
        if (!context.mounted) return;
        context.go("/posts");
      },
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.all(12),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
      ),
      child: const Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Text("Ingresar", style: TextStyle(fontSize: 20)),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Icon(Icons.arrow_circle_right_outlined, size: 28),
          )
        ],
      ),
    );
  }
}


/*
Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Ingresar",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(width: 10),
          Icon(Icons.arrow_circle_right_outlined, size: 28),
        ],
      ),

*/