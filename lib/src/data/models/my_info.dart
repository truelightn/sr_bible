import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'my_info.freezed.dart';
part 'my_info.g.dart';

@freezed
class MyInfo with _$MyInfo {
  const factory MyInfo({
    int? memId,
    String? name,
    String? campus,
    DateTime? dtBirth,
    String? mobile,
    String? uid,
    String? grade,
    String? department,
    RetreatInfo? retreatInfo,
    RetreatInfo? retreatGbsInfo,
    GbsInfo? gbsInfo,
    GbsInfo? readyGbsInfo,
  }) = _MyInfo;

  factory MyInfo.fromJson(Map<String, dynamic> json) => _$MyInfoFromJson(json);
}

@freezed
class GbsInfo with _$GbsInfo {
  const factory GbsInfo({
    dynamic? gbs,
    dynamic? position,
  }) = _GbsInfo;

  factory GbsInfo.fromJson(Map<String, dynamic> json) => _$GbsInfoFromJson(json);
}

@freezed
class RetreatInfo with _$RetreatInfo {
  const factory RetreatInfo({
    int? retreatId,
    String? gbs,
    String? position,
    bool? attendAll,
    List<dynamic>? dayTimeList,
    String? lectureHope,
    bool? vaccinated,
  }) = _RetreatInfo;

  factory RetreatInfo.fromJson(Map<String, dynamic> json) => _$RetreatInfoFromJson(json);
}
