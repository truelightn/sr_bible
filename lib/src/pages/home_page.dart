import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  static int _current = 0;
  final CarouselController _controller = CarouselController();
  final selectedPageIndex = 0.obs;
  static List<String> images = [
    "https://cdn.pixabay.com/photo/2014/04/14/20/11/pink-324175_1280.jpg",
    "https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014_1280.jpg",
    "https://cdn.pixabay.com/photo/2012/03/01/00/55/flowers-19830_1280.jpg",
    "https://cdn.pixabay.com/photo/2015/06/19/20/13/sunset-815270_1280.jpg",
    "https://cdn.pixabay.com/photo/2016/01/08/05/24/sunflower-1127174_1280.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Stack(children: [
        sliderWidget(context),
        sliderIndicator(),
      ]),
      menuListWidget(context),
    ]);
  }

  Widget sliderWidget(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return CarouselSlider(
      carouselController: _controller,
      options: CarouselOptions(
        height: screenHeight * 0.7,
        viewportFraction: 1.0,
        // autoPlay: true,
        // autoPlayInterval: const Duration(seconds: 4),
        onPageChanged: (index, reason) {
          selectedPageIndex.value = index;
        },
      ),
      items: images.map((imageURL) {
        return Builder(
          builder: (context) {
            return SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Image(
                fit: BoxFit.fill,
                image: NetworkImage(
                  imageURL,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }

  Widget sliderIndicator() {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 10,
      child: Obx(() => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: images.asMap().entries.map((entry) {
              final index = entry.key;
              return GestureDetector(
                onTap: () {
                  _controller.animateToPage(index);
                },
                child: Container(
                  width: 8.0,
                  height: 8.0,
                  margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(selectedPageIndex.value == index ? 0.9 : 0.4),
                  ),
                ),
              );
            }).toList(),
          )),
    );
  }

  Widget menuListWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [menuWidget(context, Icons.info_outline, "대학부 공지사항"), const SizedBox(height: 8.0), menuWidget(context, Icons.info_outline, "팀별 기도제목")],
      ),
    );
  }

  Widget menuWidget(BuildContext context, IconData icon, String text) {
    return InkWell(
      onTap: () => {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('준비중입니다.'),
            duration: Duration(seconds: 1),
          ),
        )
      },
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: Colors.grey[400]!,
            width: 1.0,
          ),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.grey[600],
            ),
            const SizedBox(width: 8.0),
            Expanded(
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios_sharp,
            ),
          ],
        ),
      ),
    );
  }
}