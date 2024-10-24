import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  bool isAuthenticated = false;

  void authenticateUser() {
    isAuthenticated = true;
    notifyListeners();
  }

  void logoutUser() {
    isAuthenticated = false;
    notifyListeners();
  }

  bool get isUserAuthenticated => isAuthenticated;
}
