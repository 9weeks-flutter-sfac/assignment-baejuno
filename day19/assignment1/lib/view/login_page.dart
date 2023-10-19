import 'package:assignment1/controller/login_controller.dart';
import 'package:assignment1/view/join_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});
  static const String route = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Login",
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold,
                letterSpacing: -2),
            ),
            const SizedBox(height: 8,),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: TextField(
                controller: controller.idController,
                decoration: const InputDecoration(
                  hintText: '아이디를 입력하세요',
                ),
                
              ),
            ),
            const SizedBox(height: 8,),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: TextField(
                controller: controller.pwController,
                decoration: const InputDecoration(
                  hintText: '비밀번호를 입력하세요',
                ),
              )
            ),
            const SizedBox(height: 8,),
            ElevatedButton(
              onPressed: (){
                controller.login();
              }, 
              child: const Text("로그인하기"),
            ),
            TextButton(
              onPressed: (){
                Get.toNamed(JoinPage.route);
              }, 
              child: const Text('회원가입하러가기'),
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              children: const [
                Expanded(
                  child: Divider(
                    indent: 16,
                    endIndent: 16,
                ))
              ],
            )
          ]
        ),
      ),
    );
  }
}