import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sr_bible/src/controller/auth_controller.dart';

import '../controller/more_controller.dart';

class MorePage extends GetView<MoreController> {
  MorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String tempUri = "";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.black, // 아이콘 색상을 검은색으로 설정
        ),
        title: const Text(
          "더보기",
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
        child: Column(
          children: [
            Obx(
              () => Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 20.0),
                    child: tempUri == ""
                        ? CircleAvatar(
                            backgroundColor: Colors.grey.shade400,
                            child: const Text('SR'),
                          )
                        : CachedNetworkImage(
                            imageUrl: "",
                            imageBuilder: (context, imageProvider) => Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(4)), image: DecorationImage(image: imageProvider, fit: BoxFit.cover)),
                            ),
                          ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Text(
                          '${AuthController.to.myInfo.value.name}님, 안녕하세요!',
                          style: const TextStyle(
                            color: Color(0xff8979f5),
                            fontSize: 14,
                            fontFamily: "Noto Sans KR",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(
                        child: Text(
                          "${AuthController.to.myInfo.value.campus}",
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: "Noto Sans KR",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(thickness: 1),
            moreItemListWidget(),
            Divider(thickness: 1),
          ],
        ),
      ),
    );
  }

  Widget moreItemListWidget() {
    return Expanded(
        child: ListView.separated(
      itemCount: controller.mainList.length,
      itemBuilder: (BuildContext context, int index) => Padding(padding: const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0), child: moreItemWidget(index)),
      separatorBuilder: (BuildContext context, int index) {
        {
          return const Divider(thickness: 1);
        }
      },
    ));
  }

  Widget moreItemWidget(int index) {
    return ListTile(
      dense: true,
      onTap: () {
        controller.clickIndex(index);
      },
      title: Container(
        alignment: Alignment.centerLeft,
        child: Text(
          controller.mainList[index],
          textAlign: TextAlign.start,
          style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
