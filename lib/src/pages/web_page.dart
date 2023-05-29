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
      initialUrl: 'https://cba.sungrak.or.kr:9000/new',
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}
