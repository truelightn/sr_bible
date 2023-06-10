import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

enum RouteName { bible, web, video, more }

class MoreController extends GetxController {
  static MoreController get to => Get.find();
  List<String> mainList = ['공지사항', '온라인 헌금 안내', '유튜브', '인스타', '청지기', '설정'];

  GlobalKey<NavigatorState> biblePageNavigationKey = GlobalKey<NavigatorState>();

  void clickIndex(int index) {}
}
