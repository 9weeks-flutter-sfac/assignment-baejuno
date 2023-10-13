import 'dart:async';

import 'package:get/get.dart';

class CoinController extends GetxController {
  Timer? _timer;
  var count = 0.obs;

  void reSet () {
    count.value = 0;
  }


  @override
  void onReady(){
    _startTimer(0);
    super.onReady();
  }

  @override
  void onClose(){
    if(_timer!=null){
      _timer!.cancel();
    }
    super.onClose();
  }

  _startTimer(int seconds){
    const duration = Duration(seconds: 1);
    _timer = Timer.periodic(duration, (Timer timer) {
        count.value++;
      }
     );
  }

  CoinController() {
    ever(count, 
    (int value) {
      print(value);
        if (value != 0 && value % 10 ==0){
          Get.snackbar("안내", "축하합니다 ${value}개의 코인을 달성했습니다");
        }
      }
    );
  }
}