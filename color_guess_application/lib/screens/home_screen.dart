import 'package:color_guess_application/providers/auth_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home Screen",
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.read<AuthProvider>().logoutUser(),
          child: const Text(
            "Logout",
          ),
        ),
      ),
    );
  }
}
