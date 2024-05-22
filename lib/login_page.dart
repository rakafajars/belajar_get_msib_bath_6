import 'package:belajar_get_msib/button_login.dart';
import 'package:belajar_get_msib/login_form_password.dart';
import 'package:belajar_get_msib/login_form_username.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LoginFormUsername(),
              LoginFormPassword(),
              const SizedBox(height: 16),
              ButtonLogin(),
            ],
          ),
        ),
      ),
    );
  }
}
