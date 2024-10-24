import 'package:color_guess_application/providers/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
      builder: (context, isAuth, _) => Scaffold(
        appBar: AppBar(
          title: const Text(
            "Auth Screen!",
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () =>
                    context.read<AuthProvider>().authenticateUser(),
                child: const Text(
                  "Login User",
                ),
              ),
            ),
            Center(
              child: Text(
                "${isAuth.isAuthenticated}",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
