// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyInfo _$$_MyInfoFromJson(Map<String, dynamic> json) => _$_MyInfo(
      memId: json['memId'] as int?,
      name: json['name'] as String?,
      campus: json['campus'] as String?,
      dtBirth: json['dtBirth'] == null
          ? null
          : DateTime.parse(json['dtBirth'] as String),
      mobile: json['mobile'] as String?,
      uid: json['uid'] as String?,
      grade: json['grade'] as String?,
      department: json['department'] as String?,
      retreatInfo: json['retreatInfo'] == null
          ? null
          : RetreatInfo.fromJson(json['retreatInfo'] as Map<String, dynamic>),
      retreatGbsInfo: json['retreatGbsInfo'] == null
          ? null
          : RetreatInfo.fromJson(
              json['retreatGbsInfo'] as Map<String, dynamic>),
      gbsInfo: json['gbsInfo'] == null
          ? null
          : GbsInfo.fromJson(json['gbsInfo'] as Map<String, dynamic>),
      readyGbsInfo: json['readyGbsInfo'] == null
          ? null
          : GbsInfo.fromJson(json['readyGbsInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MyInfoToJson(_$_MyInfo instance) => <String, dynamic>{
      'memId': instance.memId,
      'name': instance.name,
      'campus': instance.campus,
      'dtBirth': instance.dtBirth?.toIso8601String(),
      'mobile': instance.mobile,
      'uid': instance.uid,
      'grade': instance.grade,
      'department': instance.department,
      'retreatInfo': instance.retreatInfo,
      'retreatGbsInfo': instance.retreatGbsInfo,
      'gbsInfo': instance.gbsInfo,
      'readyGbsInfo': instance.readyGbsInfo,
    };

_$_GbsInfo _$$_GbsInfoFromJson(Map<String, dynamic> json) => _$_GbsInfo(
      gbs: json['gbs'],
      position: json['position'],
    );

Map<String, dynamic> _$$_GbsInfoToJson(_$_GbsInfo instance) =>
    <String, dynamic>{
      'gbs': instance.gbs,
      'position': instance.position,
    };

_$_RetreatInfo _$$_RetreatInfoFromJson(Map<String, dynamic> json) =>
    _$_RetreatInfo(
      retreatId: json['retreatId'] as int?,
      gbs: json['gbs'] as String?,
      position: json['position'] as String?,
      attendAll: json['attendAll'] as bool?,
      dayTimeList: json['dayTimeList'] as List<dynamic>?,
      lectureHope: json['lectureHope'] as String?,
      vaccinated: json['vaccinated'] as bool?,
    );

Map<String, dynamic> _$$_RetreatInfoToJson(_$_RetreatInfo instance) =>
    <String, dynamic>{
      'retreatId': instance.retreatId,
      'gbs': instance.gbs,
      'position': instance.position,
      'attendAll': instance.attendAll,
      'dayTimeList': instance.dayTimeList,
      'lectureHope': instance.lectureHope,
      'vaccinated': instance.vaccinated,
    };
