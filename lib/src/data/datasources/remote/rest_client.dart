import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../constant.dart';
import '../../models/my_info.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: SERVER_URL)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/members/info')
  Future<MyInfo> getMyInfo(@Query("uid", encoded: true) String uid);
}
