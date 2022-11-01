import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:sr_bible/src/binding/init_binding.dart';
import 'package:sr_bible/src/const.dart';
import 'package:sr_bible/src/controller/bible_controller.dart';

class BibleReadPage extends GetView<BibleController> {
  BibleReadPage({Key? key}) : super(key: key);

  ItemScrollController _itemScrollController = ItemScrollController();

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
            child: ScrollablePositionedList.builder(
              itemScrollController: _itemScrollController,
              scrollDirection: Axis.vertical,
              itemCount: controller.getSelectedVerseLength(),
              initialScrollIndex: controller.selectedVerse.value,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      title: Text("${index + 1} ${controller.getBibleVerseList()[index]}"),
                      onTap: () {},
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
