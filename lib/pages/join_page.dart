import 'package:flutter/material.dart';
import 'package:login_app/components/custom_join_form.dart';

import '../components/logo.dart';

class JoinPage extends StatelessWidget {
  const JoinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Logo(),
            CustomJoinForm(),
          ],
        ),
      ),
    );
  }
}
