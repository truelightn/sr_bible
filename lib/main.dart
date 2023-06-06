import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sr_bible/src/controller/auth_controller.dart';

import 'firebase_options.dart';
import 'src/app.dart';
import 'src/binding/init_binding.dart';
import 'src/pages/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); 
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((value) => Get.put(AuthController()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Sungrak Bible',
      theme: ThemeData(
        primaryColor: const Color(0xff8979F5),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialBinding: InitBinding(),
      initialRoute: '/login',
      getPages: [
        GetPage(name: "/", page: () => const App()),
        GetPage(name: "/login", page: () => LoginPage()),
      ],
    );
  }
}

