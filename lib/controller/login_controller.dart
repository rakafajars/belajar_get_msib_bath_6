import 'package:belajar_get_msib/counter_page.dart';
import 'package:belajar_get_msib/model/place_holder_post_model.dart';
import 'package:belajar_get_msib/service/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final errorMessageUsername = Rxn<String>();
  final errorMessagePassword = Rxn<String>();

  RxBool isEnableButtonUsername = true.obs;
  RxBool isEnableButtonPassword = true.obs;

  void validatorUsername(String value) {
    if (value.isEmpty) {
      errorMessageUsername.value = "Username tidak boleh kosong";
      isEnableButtonUsername.value = true;
    } else if (value.length < 3) {
      errorMessageUsername.value = "Username harus lebih dari 3 huruf";
      isEnableButtonUsername.value = true;
    } else {
      errorMessageUsername.value = null;
      isEnableButtonUsername.value = false;
    }
  }

  void validatorPassword(String value) {
    if (value.isEmpty) {
      errorMessagePassword.value = "Password tidak boleh kosong";
      isEnableButtonPassword.value = true;
    } else if (value.length < 3) {
      errorMessagePassword.value = "Password harus lebih dari 3 huruf";
      isEnableButtonPassword.value = true;
    } else {
      errorMessagePassword.value = null;
      isEnableButtonPassword.value = false;
    }
  }

  Rx<PlaceHolderPostModel?> placeHolderPostModel = Rxn(PlaceHolderPostModel());
  RxBool isLoadingLogin = false.obs;

  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void postLogin() async {
    isLoadingLogin.value = true;
    try {
      final response = await AuthService.postPlaceHolder(
        title: userController.text,
        body: passwordController.text,
      );

      placeHolderPostModel.value = response;
      Get.to(() => CounterPage());
    } catch (e) {
      Get.snackbar(
        'Error',
        e.toString(),
      );
    } finally {
      isLoadingLogin.value = false;
    }
  }

  @override
  void dispose() {
    userController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
