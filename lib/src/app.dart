import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sr_bible/src/pages/bible_page.dart';
import 'package:sr_bible/src/pages/community_page.dart';
import 'package:sr_bible/src/pages/home_page.dart';
import 'package:sr_bible/src/pages/more_page.dart';

import 'controller/app_controller.dart';

class App extends GetView<AppController> {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: IndexedStack(
          index: controller.currentIndex.value,
          children: [
            HomePage(),
            Navigator(
                key: controller.biblePageNavigationKey,
                onGenerateRoute: ((settings) {
              return MaterialPageRoute(
                builder: (context) => BiblePage(),
              );
            })),
            // Navigator(onGenerateRoute: ((settings) {
            //   return MaterialPageRoute(
            //     builder: (context) => WebPage(),
            //   );
            // })),
            // VideoPage(),
            CommunityPage(),
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
                icon: Icon(Icons.home),
                label: "홈",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.book),
                label: '성경',
              ),
              // BottomNavigationBarItem(
              //   icon: Icon(Icons.web),
              //   label: "WEB",
              // ),
              BottomNavigationBarItem(
                icon: Icon(Icons.message),
                label: '커뮤니티',
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
