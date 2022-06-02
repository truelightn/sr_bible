import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sr_bible/src/const.dart';
import 'package:sr_bible/src/controller/bible_controller.dart';
import 'package:sr_bible/src/pages/bible_read_page.dart';

class BiblePage extends GetView<BibleController> {
  BiblePage({Key? key}) : super(key: key);

  @override
  final BibleController controller = Get.put(BibleController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          appBar: AppBar(
            title: Text(
              "${BibleTitleList[controller.selectedTitleIndex.value]} ${controller.getCurrentChapter()}장",
              style: const TextStyle(color: Colors.black),
            ),
          ),
          body: Row(
            children: [
              SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: ListView.builder(
                    itemCount: BibleTitleList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          ListTile(
                            title: Text("${BibleCharList[index]} / ${BibleTitleList[index]}"),
                            onTap: () {
                              controller.updateSelectedTitleIndex(index);
                            },
                          ),
                          const Divider()
                        ],
                      );
                    },
                  )),
              const VerticalDivider(),
              SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: ListView.builder(
                      itemCount: controller.getSelectedChapterLength(),
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            ListTile(
                              title: Text("${index + 1}장"),
                              onTap: () {
                                controller.updateSelectedChapter(index);
                                Navigator.push(context, MaterialPageRoute(builder: ((context) => BibleReadPage())));

                                // Get.to(() => BibleReadPage());
                              },
                              // onLongPress: () {
                              //   controller.updateSelectedVerse(index);
                              // },
                            ),
                            const Divider()
                          ],
                        );
                      })),
              const VerticalDivider(),
              SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: ListView.builder(
                      itemCount: controller.getSelectedVerseLength(),
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            ListTile(
                              title: Text("${index + 1}절"),
                              onTap: () {
                                controller.updateSelectedVerse(index);
                                Get.to(() => BibleReadPage());
                              },
                            ),
                            const Divider()
                          ],
                        );
                      })),
            ],
          ),
        ));
  }
}
