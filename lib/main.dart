import 'package:flutter/material.dart';
import 'package:flutter_auth_ui_app/pages/login_page.dart';
import 'package:flutter_auth_ui_app/pages/signup_page.dart';
import 'package:flutter_auth_ui_app/pages/welcome_page.dart';

void main() {
  runApp(const FlutterAuthUiApp());
}

class FlutterAuthUiApp extends StatelessWidget {
  const FlutterAuthUiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => const Welcome(),
        "/login": (context) => const Login(),
        "/signup": (context) => const Signup(),
      },
    );
  }
}
