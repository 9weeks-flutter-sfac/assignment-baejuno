import 'package:assignment1/controller/join_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class JoinPage extends GetView<JoinController> {
  const JoinPage({super.key});
  static const String route = '/join';

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
              "Join",
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
                controller: controller.emailController,
                decoration: const InputDecoration(
                  hintText: '이메일을 입력하세요',
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
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: TextField(
                controller: controller.pwConfirmController,
                decoration: const InputDecoration(
                  hintText: '비밀번호를 한번 더 입력해주세요',
                ),
              )
            ),
            const SizedBox(height: 8,),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: TextField(
                controller: controller.userNameController,
                decoration: const InputDecoration(
                  hintText: '유저네임을 입력하세요',
                ),
              )
            ),
            const SizedBox(height: 8,),
            ElevatedButton(
              onPressed: (){
                controller.join();
              }, 
              child: const Text("회원가입하기"),
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