import 'package:color_guess_application/providers/auth_provider.dart';
import 'package:color_guess_application/screens/auth/auth_screen.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:color_guess_application/screens/home_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AuthProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final isUserAuthenticated = context.watch<AuthProvider>().isAuthenticated;

    Widget currentScreen = const HomeScreen();

    if (!isUserAuthenticated) {
      currentScreen = const AuthScreen();
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: Colors.black,
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
        ),
      ),
      home: currentScreen,
    );
  }
}
