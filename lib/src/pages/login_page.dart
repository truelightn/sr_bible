// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sr_bible/src/constant.dart';

import 'package:sr_bible/src/controller/auth_controller.dart';

class LoginPage extends GetView<AuthController> {
  LoginPage({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      padding: const EdgeInsets.only(
        top: 48,
      ),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Opacity(
                opacity: 0.40,
                child: Container(
                  width: 390,
                  height: 56,
                ),
              ),
              SizedBox(height: 18.83),
              Container(
                width: 342,
                height: 62,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 342,
                      height: 62,
                      color: Colors.white,
                      padding: const EdgeInsets.only(
                        left: 80,
                        right: 91,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 171,
                            height: 58,
                            child: const Image(image: AssetImage('assets/images/univ_logo.png')),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 18.83),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: COLOR_MAIN_PUPLE,
                          width: 1.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: 1,
                          color: Color(0xffd9d9d9),
                        ),
                      ),
                      labelText: '이메일',
                      labelStyle: TextStyle(
                        color: COLOR_MAIN_PUPLE,
                        fontSize: 10,
                        fontFamily: "Noto Sans KR",
                        fontWeight: FontWeight.w500,
                      ),
                      hintText: '이메일을 입력해주세요',
                      hintStyle: TextStyle(
                        color: Color(0xffd9d9d9),
                        fontSize: 14,
                        fontFamily: "Noto Sans KR",
                        fontWeight: FontWeight.w500,
                      )),
                  onSaved: (text) {
                    controller.updateEmail(text!);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: COLOR_MAIN_PUPLE,
                          width: 1.0,
                        ),
                      ),
                      //         suffixIcon: IconButton(
                      // icon: Icon(
                      //   // Based on passwordVisible state choose the icon
                      //    _passwordVisible
                      //    ? Icons.visibility
                      //    : Icons.visibility_off,
                      //    color: Theme.of(context).primaryColorDark,
                      //    ),
                      // onPressed: () {
                      //    // Update the state i.e. toogle the state of passwordVisible variable
                      //    setState(() {
                      //        _passwordVisible = !_passwordVisible;
                      //    });
                      //  },
                      // ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: 1,
                          color: Color(0xffd9d9d9),
                        ),
                      ),
                      labelText: '비밀번호',
                      labelStyle: TextStyle(
                        color: COLOR_MAIN_PUPLE,
                        fontSize: 10,
                        fontFamily: "Noto Sans KR",
                        fontWeight: FontWeight.w500,
                      ),
                      hintText: '비밀번호를 입력해주세요',
                      hintStyle: TextStyle(
                        color: Color(0xffd9d9d9),
                        fontSize: 14,
                        fontFamily: "Noto Sans KR",
                        fontWeight: FontWeight.w500,
                      )),
                  onSaved: (text) {
                    controller.updatePassword(text!);
                  },
                ),
              ),
              SizedBox(height: 18.83),
              Container(
                width: 342,
                height: 62,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff8979f5),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 36,
                  vertical: 17,
                ),
                child: InkWell(
                  onTap: () async {
                    _formKey.currentState!.save();
                    // if (!_formKey.currentState!.validate()) {
                    //   return;
                    // }
                    controller.logIn();
                  },
                  child: Container(
                    width: 270,
                    height: 28,
                    padding: const EdgeInsets.only(
                      bottom: 2,
                    ),
                    child: SizedBox(
                      width: 270,
                      child: Text(
                        "로그인",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: "Noto Sans KR",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 18.83),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 102,
                    child: Text(
                      "회원가입",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff666666),
                        fontSize: 12,
                        decoration: TextDecoration.underline,
                        fontFamily: "Noto Sans KR",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 102,
                    child: Text(
                      "비밀번호 찾기",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff666666),
                        fontSize: 12,
                        decoration: TextDecoration.underline,
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
      ),
    ));
  }
}
