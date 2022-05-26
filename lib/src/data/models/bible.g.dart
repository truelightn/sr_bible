// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bible.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Bible _$$_BibleFromJson(Map<String, dynamic> json) => _$_Bible(
      abbrev: json['abbrev'] as String?,
      chapters: (json['chapters'] as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>).map((e) => e as String).toList())
          .toList(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_BibleToJson(_$_Bible instance) => <String, dynamic>{
      'abbrev': instance.abbrev,
      'chapters': instance.chapters,
      'name': instance.name,
    };
