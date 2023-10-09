import 'package:flutter/material.dart';
import 'package:login_app/components/carrot_header.dart';
import 'package:login_app/components/carrot_help.dart';
import 'package:login_app/components/carrot_text_form_field.dart';
import 'package:login_app/pages/join_page.dart';
import 'package:login_app/pages/login_page.dart';
import 'package:login_app/user_repository.dart';
import 'package:login_app/validator_util.dart';

class CustomLoginForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _email = TextEditingController();
  final _password = TextEditingController();

  CustomLoginForm();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CarrotHeader(
              title: "Login", content: "Enter your emails and password"),
          CarrotTextFormField(
            text: "Email",
            validate: validateEmail(),
            textController: _email,
          ),
          CarrotTextFormField(
            text: "Password",
            validate: validatePassword(),
            textController: _password,
            isPassword: true,
          ),
          SizedBox(height: 10),
          CarrotHelp(
              text: "Forgot Password?",
              mainAxisAlignment: MainAxisAlignment.end,
              routerPage: LoginPage()),
          SizedBox(height: 20),
          TextButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                UserRepository repo = UserRepository();
                repo.login(_email.text.trim(), _password.text.trim());
                Navigator.pushNamed(context, "/join");
              }
            },
            child: Text("Log In"),
          ),
          SizedBox(height: 10),
          CarrotHelp(
              text: "Don't have an account?",
              mainAxisAlignment: MainAxisAlignment.center,
              textButton: "Singup",
              routerPage: JoinPage()),
        ],
      ),
    );
  }
}
