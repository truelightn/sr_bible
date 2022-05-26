import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/models/bible.dart';
import '../data/repositories/bible_repo.dart';

class BibleController extends GetxController {
  static BibleController get to => Get.find();
  BibleRepo repo = BibleRepo();

  List<Bible> bible = [];

  @override
  void onInit() {
    loadBibile();
    super.onInit();
  }

  loadBibile() async {
    bible = await repo.getBible();
  }
}
