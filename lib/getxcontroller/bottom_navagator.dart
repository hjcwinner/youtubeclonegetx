import 'package:get/get.dart';

class BottomNavgatorWidget extends GetxService{
  static BottomNavgatorWidget get to => Get.find();


  RxInt currentindex = 0.obs;
  // int get currentPage => _index;

  void updateCurrentPage(int index){
    currentindex(index);
  }
}