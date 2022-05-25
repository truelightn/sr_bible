import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

enum RouteName { bible, web, video, more }

class AppController extends GetxService {
  static AppController get to => Get.find();
  RxInt currentIndex = 0.obs;

  void changePageIndex(int index) {
    currentIndex(index);
    // if (RouteName.values[index] == RouteName.home) {
    //   // _showBottomSheet();
    // } else {
    //   currentIndex(index);
    // }
  }

  // void _showBottomSheet() {
  //   Get.bottomSheet(YoutubeBottomSheet());
  // }
}
