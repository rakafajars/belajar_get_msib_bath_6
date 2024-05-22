import 'package:belajar_get_msib/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginFormUsername extends StatelessWidget {
  LoginFormUsername({super.key});

  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => TextFormField(
        controller: loginController.userController,
        decoration: InputDecoration(
          hintText: 'Username',
          errorText: loginController.errorMessageUsername.value,
        ),
        onChanged: (String value) {
          loginController.validatorUsername(value);
        },
      ),
    );
  }
}
