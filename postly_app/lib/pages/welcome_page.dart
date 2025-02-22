import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Align(
              alignment: Alignment.center,
              child: Icon(
                Icons.pages,
                color: Colors.blue,
                size: 140,
              ),
            ),
            const Text(
              "Postly App",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 300,
              child: OutlinedButton(
                onPressed: () {
                  context.go("/home");
                },
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Ingresar"),
                    const SizedBox(width: 10),
                    Icon(Icons.arrow_circle_right_outlined),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
