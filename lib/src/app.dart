import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sr_bible/src/pages/bible_page.dart';
import 'package:sr_bible/src/pages/more_page.dart';
import 'package:sr_bible/src/pages/video_page.dart';

import 'controller/app_controller.dart';
import 'pages/web_page.dart';

class App extends GetView<AppController> {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: IndexedStack(
          index: controller.currentIndex.value,
          children: [
            Navigator(onGenerateRoute: ((settings) {
              return MaterialPageRoute(
                builder: (context) => BiblePage(),
              );
            })),
            Navigator(onGenerateRoute: ((settings) {
              return MaterialPageRoute(
                builder: (context) => WebPage(),
              );
            })),
            VideoPage(),
            MorePage()
          ],
        ),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: controller.currentIndex.value,
            showSelectedLabels: true,
            selectedItemColor: Colors.black,
            onTap: controller.changePageIndex,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.book),
                label: '성경',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.web),
                label: "WEB",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.ondemand_video),
                label: '영상',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz),
                label: '더보기',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
