import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:dio/dio.dart';
import 'package:sr_bible/src/data/models/my_info.dart';

import '../datasources/remote/rest_client.dart';

class MainRepositories {
  static final MainRepositories _mainRepositories = MainRepositories._internal();
  late RestClient _restClient;
  String? userId;

  MainRepositories._internal() {
    var dio = Dio();
    var auth = FirebaseAuth.instance;

    userId = auth.currentUser?.uid;
    dio.options.headers['User-uid'] = userId;
    dio.options.headers['Authorization'] = "Basic YWRtaW46ZGh3bHJybGVoISEh";

    _restClient = RestClient(dio);
  }
  factory MainRepositories() => _mainRepositories;

  Future<MyInfo> getMyInfo(String uid) async {
    try {
      final result = await _restClient.getMyInfo(uid);
      return result;
    } on DioException catch (e) {
      if (kDebugMode) {
        print(e);
      }
      rethrow;
    }
  }
}
