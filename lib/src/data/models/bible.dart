// To parse this JSON data, do
//
//     final bible = bibleFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'bible.freezed.dart';
part 'bible.g.dart';

@freezed
abstract class Bible with _$Bible {
  const factory Bible({
    String? abbrev,
    List<List<String>>? chapters,
    String? name,
  }) = _Bible;

  factory Bible.fromJson(Map<String, dynamic> json) => _$BibleFromJson(json);
}
