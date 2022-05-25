import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../components/custom_appbar.dart';
import '../controller/web_controller.dart';

class WebPage extends GetView<WebController> {
  WebPage({Key? key}) : super(key: key);

  @override
  final WebController controller = Get.put(WebController());

  @override
  Widget build(BuildContext context) {
    return const WebView(
      initialUrl:  'http://www.sungrak.or.kr/sr/',
      javascriptMode: JavascriptMode.unrestricted,
      // initialUrl: 'https://flutter.dev',
    );
  }
}

// class HomePage extends StatefulWidget {
//   const HomePage ({ Key? key }) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Flutter WebView'),
//       ),
//       body: const WebView(
//         initialUrl: 'https://flutter.dev',
//       ),
//     );
//   }
// }