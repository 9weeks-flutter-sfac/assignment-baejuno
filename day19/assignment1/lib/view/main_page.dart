
import 'package:assignment1/controller/login_controller.dart';
import 'package:assignment1/view/secret_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends GetView<LoginController> {
  const MainPage({super.key});
  static const String route = '/main';

  // 추상화한 함수
  Widget _buildButton(
    final String imagePath,
    final String text,
    Function() onTap,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: 330,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white54,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, bottom: 3, right: 10),
                child: Image.asset(imagePath, height: 50),
              ),
              Text(
                text,
                style: const TextStyle(fontFamily: "secrete", fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 50),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/detective.png', width: 300, height: 150),
             Padding(
              padding: EdgeInsets.all(6.0),
              child:  
                Column(
                  children: [
                    Text(
                      "레이튼의 소원 수리함",
                      style: TextStyle(fontFamily: "secrete", fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                        onPressed: () {
                          controller.logout();
                        },
                        child: Text('로그아웃')) 
                  ],
                ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                margin: const EdgeInsets.all(4),
                width: 350,
                height: 300,
                child: Column(
                  children: [
                    _buildButton(
                      'assets/images/gold-key.png',
                      "소원 수리함 열기",
                      () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return PostList();
                        }));
                      },
                    ),
                    _buildButton(
                      'assets/images/writer.png',
                      "작성자들 보기",
                      () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context) {
                        //   return AuthorList();
                        // }));
                      },
                    ),
                    _buildButton(
                      'assets/images/writing.png',
                      "나도 써보기",
                      () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context) {
                        //   return null;
                        // }));
                      },
                    ),
                   
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}