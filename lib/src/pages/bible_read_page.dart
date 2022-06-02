import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sr_bible/src/const.dart';
import 'package:sr_bible/src/controller/bible_controller.dart';

class BibleReadPage extends GetView<BibleController> {
  BibleReadPage({Key? key}) : super(key: key);

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
          body: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              itemCount: controller.getSelectedVerseLength(),
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    ListTile(
                      title: Text("${index + 1} ${controller.getBibleVerseList()[index]}"),
                      onTap: () {
                        // controller.updateSelectedTitleIndex(index);
                      },
                    ),
                    const Divider()
                  ],
                );
              },
            ),
          ),
        ));
  }
}
