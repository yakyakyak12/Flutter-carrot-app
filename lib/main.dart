import 'package:flutter/material.dart';
import 'package:login_app/pages/join_page.dart';
import 'package:login_app/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: buildThemeData(),
      initialRoute: "/join",
      routes: {
        "/login": (context) => LoginPage(),
        "/join": (context) => JoinPage(),
      },
    );
  }

  ThemeData buildThemeData() {
    return ThemeData(
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          textStyle: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w700, inherit: false),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          minimumSize: const Size(double.infinity, 60),
        ),
      ),
    );
  }
}
