import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WebController extends GetxController {
  static WebController get to => Get.find();

  ScrollController scrollController = ScrollController();
  RxInt a = 0.obs;

  @override
  void onInit() {
    // _videoLoad();
    // _event();
    super.onInit();
  }

  // void _event() {
  //   scrollController.addListener(() {
  //     if (scrollController.position.pixels ==
  //             scrollController.position.maxScrollExtent &&
  //         youtubeResult.value.nextPagetoken != "") {
  //       _videoLoad();
  //     }
  //   });
  // }

  // void _videoLoad() async {
  //   YoutubeVideoResult youtubeVideoResult = await YoutubeRepository.to
  //       .loadVideos(youtubeResult.value.nextPagetoken ?? "");

  //   if (youtubeVideoResult != null &&
  //       youtubeVideoResult.items != null &&
  //       youtubeVideoResult.items.length > 0) {
  //     youtubeResult.update((youtube) {
  //       youtube.nextPagetoken = youtubeVideoResult.nextPagetoken;
  //       youtube.items.addAll(youtubeVideoResult.items);
  //     });
  //   }
  // }
}
