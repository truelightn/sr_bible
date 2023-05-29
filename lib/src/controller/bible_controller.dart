import 'package:get/get.dart';

import '../const.dart';
import '../data/models/bible.dart';
import '../data/repositories/bible_repo.dart';

class BibleController extends GetxController {
  static BibleController get to => Get.find();
  BibleRepo repo = BibleRepo();

  List<Bible> bible = [];

  RxInt selectedTitleIndex = 0.obs;
  RxInt selectedChapter = 0.obs;
  RxInt selectedVerse = 0.obs;

  @override
  void onInit() {
    loadBibile();
    selectedChapter(-1);
    selectedVerse(-1);
    super.onInit();
  }

  loadBibile() async {
    bible = await repo.getBible();
    // jsonData
    // for (var b in bible) {
    //   print("get bibile test:: ${b.name}/${b.abbrev}/${b.chapters?.length}");
    // }
    update();
  }

  updateSelectedTitleIndex(int index) {
    selectedTitleIndex(index);
    selectedChapter(0);
    selectedVerse(-1);
  }

  updateSelectedChapter(int index) {
    selectedChapter(index);
    selectedVerse(0);
  }

  updateSelectedVerse(int index) {
    print("test:: update $index jul");
    selectedVerse(index);
  }

  int getCurrentChapter() {
    var chater = selectedChapter.value;
    return chater + 1;
  }

  int getCurrentVerse() {
    var verse = selectedVerse.value;
    return verse + 1;
  }

  int getSelectedChapterLength() {
    if (bible.isEmpty || selectedChapter.value == -1) {
      return 0;
    }
    return BibleNumList[selectedTitleIndex.value];
  }

  int getSelectedVerseLength() {
    if (bible.isEmpty || selectedVerse.value == -1) {
      return 0;
    }
    print("test:: bibileName:${bible[selectedTitleIndex.value].name} / ${selectedChapter.value}jang / ${selectedVerse.value}jul");
    return bible[selectedTitleIndex.value].chapters![selectedChapter.value].length;
  }

  List<String> getBibleVerseList() {
    if (bible.isEmpty || selectedVerse.value == -1) {
      return [];
    }
    return bible[selectedTitleIndex.value].chapters![selectedChapter.value];
  }
}
