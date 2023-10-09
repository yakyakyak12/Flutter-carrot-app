import 'package:flutter/material.dart';
import 'package:login_app/components/carrot_header.dart';
import 'package:login_app/components/carrot_help.dart';
import 'package:login_app/components/carrot_help_v2.dart';
import 'package:login_app/components/carrot_text_form_field.dart';
import 'package:login_app/pages/login_page.dart';
import 'package:login_app/user_repository.dart';
import 'package:login_app/validator_util.dart';

class CustomJoinForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _userName = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();

  CustomJoinForm();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CarrotHeader(
            title: "Sign Up",
            content: "Enter your credentials to continue",
          ),
          CarrotTextFormField(
            text: "Username",
            validate: validateUserName(),
            textController: _userName,
          ),
          CarrotTextFormField(
              text: "Email", validate: validateEmail(), textController: _email),
          CarrotTextFormField(
              text: "Password",
              validate: validatePassword(),
              textController: _password,
              isPassword: true),
          SizedBox(height: 10),
          CarrotHelpV2(
            text: "By continuing you agree to our",
            mainAxisAlignment: MainAxisAlignment.start,
            textButton: "Terms of Service",
          ),
          CarrotHelpV2(
            text: "and",
            mainAxisAlignment: MainAxisAlignment.start,
            textButton: "Privacy Policy.",
          ),
          SizedBox(height: 20),
          TextButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  UserRepository repo = UserRepository();
                  repo.join(
                    _userName.text.trim(),
                    _email.text.trim(),
                    _password.text.trim(),
                  );
                  Navigator.pushNamed(context, "/login");
                }
              },
              child: const Text("Sign In")),
          SizedBox(height: 10),
          CarrotHelp(
              text: "Already have an account?",
              mainAxisAlignment: MainAxisAlignment.center,
              textButton: "Logup",
              routerPage: LoginPage()),
        ],
      ),
    );
  }
}
