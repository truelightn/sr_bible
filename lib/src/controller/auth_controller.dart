import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/models/my_info.dart';
import '../data/repositories/main_repo.dart';

class AuthController extends GetxController {
  static AuthController get to => Get.find();
  late Rx<User?> _user;
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final MainRepositories _repo = MainRepositories();

  RxString loginEmail = "".obs;
  RxString loginPassword = "".obs;

  Rx<MyInfo> myInfo = MyInfo().obs;

  @override
  void onReady() {
    super.onReady();
    _user = Rx<User?>(_firebaseAuth.currentUser);
    _user.bindStream(_firebaseAuth.userChanges());
    ever(_user, _moveToPage);
  }

  @override
  void onInit() {
    super.onInit();
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      _moveToPage(user);
    });
  }

  _moveToPage(User? user) {
    if (user == null) {
      Get.offAllNamed('/login');
    } else {
      loadMyInfo(user.uid);
      Get.offAllNamed('/');
    }
  }

  updateEmail(String email) {
    loginEmail(email);
  }

  updatePassword(String pw) {
    loginPassword(pw);
  }

  Future<bool> logIn() async {
    if (kDebugMode) {
      print("login $loginEmail / $loginPassword");
    }
    try {
      final credential = await _firebaseAuth.signInWithEmailAndPassword(email: loginEmail.value.trim(), password: loginPassword.value.trim());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
      } else if (e.code == 'wrong-password') {}
    } catch (e) {
      return false;
    }

    return true;
  }

  void loadMyInfo(String uid) async {
    MyInfo response = await _repo.getMyInfo(uid);
    myInfo(response);
    if (kDebugMode) {
      print(myInfo);
    }
  }

  void signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  Future<void> sendPasswordResetEmail(String email) async {
    await FirebaseAuth.instance.setLanguageCode("kr");
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  }
}
