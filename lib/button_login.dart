import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/login_controller.dart';

class ButtonLogin extends StatelessWidget {
  ButtonLogin({super.key});

  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          ElevatedButton(
            onPressed: loginController.isEnableButtonUsername.value == true ||
                    loginController.isEnableButtonPassword.value == true
                ? null
                : () {
                    loginController.postLogin();
                  },
            child: loginController.isLoadingLogin.value
                ? const CircularProgressIndicator()
                : const Text(
                    'Login',
                  ),
          ),
          if (loginController.placeHolderPostModel.value?.title != null) ...[
            Text(loginController.placeHolderPostModel.value!.title!),
            Text(loginController.placeHolderPostModel.value!.body!),
          ],
        ],
      ),
    );
  }
}
