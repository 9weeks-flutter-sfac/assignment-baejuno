
import 'package:assignment1/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class JoinController extends GetxController {
  var emailController = TextEditingController();
  var pwController = TextEditingController();
  var pwConfirmController = TextEditingController();
  var userNameController = TextEditingController();

  join() {
    Get.find<AuthController>().join(
      emailController.text, 
      pwController.text,
      pwConfirmController.text,
      userNameController.text);
  }
}
