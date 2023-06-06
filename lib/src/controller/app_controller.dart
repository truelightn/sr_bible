import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

enum RouteName { bible, web, video, more }

class AppController extends GetxService {
  static AppController get to => Get.find();
  RxInt currentIndex = 0.obs;

  GlobalKey<NavigatorState> biblePageNavigationKey = GlobalKey<NavigatorState>();

  void changePageIndex(int index) {
    currentIndex(index);
  }

}
