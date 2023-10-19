// ignore_for_file: empty_statements, empty_catches, avoid_print

import 'package:assignment1/model/login_user.dart';
import 'package:assignment1/view/login_page.dart';
import 'package:assignment1/view/main_page.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class AuthController extends GetxController{
  final Rxn<LoginUser?> _loginuser = Rxn();
  Dio dio = Dio();
  LoginUser? get loginuser => _loginuser.value;

  login(String id, String pw) async {
    dio.options.baseUrl = 'http://52.79.115.43:8090';
    try {
      var res = await dio.post('/api/collections/users/auth-with-password',
      data: {
        'identity' : id,
        'password' : pw
      },
      );
      print(res.data);
    if(res.statusCode == 200){
      var loginuser = LoginUser.fromMap(res.data);
      _loginuser(loginuser);
      Get.snackbar('로그인성공', '환영합니다');
      Get.toNamed(MainPage.route);
      
    }

    } catch (e) {
      print(e);
      Get.snackbar(
        '로그인 오류',
        '아이디 비밀번호를 확인해주세요' );
    }
  }

  logout() {
    _loginuser.value = null;
  }

  join(String email, String password, String passwordConfirm, String username) async {
    dio.options.baseUrl = 'http://52.79.115.43:8090';
    dio.options.contentType = Headers.formUrlEncodedContentType;
    try {
      var res = await dio.post('/api/collections/users/records',
      data: {
        'email' : email,
        'password': password,
        'passwordConfirm' : passwordConfirm,
        'username' : username
      },
      );
      if(res.statusCode == 200){
        Get.snackbar(
          '회원가입 성공', 
          '회원이 되신걸 환영합니다.');
        Get.toNamed(LoginPage.route);
      }
    } on DioException catch (e) {
      print(e);
      Get.snackbar(
        '회원가입 오류',
        '정확한 정보를 입력해주세요'
       );
    }
  }

  write(String secret, String author, String authorName) async {
      
  }


  _handleAuthChanged(LoginUser? userData){
    print("야야야야야야야야");
    if(userData != null) {
      Get.toNamed(MainPage.route);
      return;
    }
    // 로그인 페이지
    Get.toNamed(LoginPage.route);
    return;
  }

  @override
  void onInit(){
    print("gdgd");
    super.onInit();
    print(_loginuser);
    ever(_loginuser, _handleAuthChanged);
  }

}