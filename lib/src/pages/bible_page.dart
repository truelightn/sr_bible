import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:sr_bible/src/controller/bible_controller.dart';
import 'package:sr_bible/src/data/repositories/bible_repo.dart';

class BiblePage extends GetView<BibleController> {
  BiblePage({Key? key}) : super(key: key);

  @override
  final BibleController controller = Get.put(BibleController());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 400,
        child: ListView.builder(
            itemCount: controller.bible.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text('${controller.bible[index].name}'),
                onTap: () {
                  // controller.updateUnitMapKey(controller.mapKeyList[index].localUnitMapKey);
                  // Navigator.pop(context);
                },
              );
            }));
  }
}
