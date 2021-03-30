import 'package:get/get.dart';
import 'package:youtubeclonegetx/getx/bottom_navagator.dart';

class InitBinding implements Bindings{
  @override
  void dependencies(){
    Get.put(BottomNavgatorWidget());
  }
}