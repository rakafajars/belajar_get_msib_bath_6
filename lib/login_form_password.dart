import 'package:belajar_get_msib/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginFormPassword extends StatelessWidget {
  LoginFormPassword({super.key});

  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => TextFormField(
        controller: loginController.passwordController,
        decoration: InputDecoration(
          hintText: 'Password',
          errorText: loginController.errorMessagePassword.value,
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.remove_red_eye,
            ),
          ),
        ),
        onChanged: (value) {
          loginController.validatorPassword(value);
        },
      ),
    );
  }
}
