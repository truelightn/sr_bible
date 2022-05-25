import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  Widget _logo() {
    return Image.asset(
      "assets/images/logo.png",
      width: 130,
    );
  }

  Widget _actions() {
    return Row(
      children: [
        GestureDetector(
          onTap: () {},
          child: const SizedBox(
            width: 23,
            height: 23,
            child: Icon(Icons.notifications),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: GestureDetector(
            onTap: () {
              Get.toNamed("/search");
            },
            child: Container(
              width: 30,
              height: 30,
              child:  const Icon(Icons.search),
            ),
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.grey.withOpacity(0.5),
          backgroundImage: Image.network(
                  "https://yt3.ggpht.com/ytc/AKedOLRfFkS6cTMOo2apRnX1X-2iLqnREaDTvnQIDZMPvg=s176-c-k-c0x00ffffff-no-rj")
              .image,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
    _logo(),
    _actions(),
      ],
    );
  }
}
