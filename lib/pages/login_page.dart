import 'package:flutter/material.dart';
import 'package:login_app/components/custom_login_form.dart';
import 'package:login_app/components/logo.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Logo(),
            CustomLoginForm(),
          ],
        ),
      ),
    );
  }
}
