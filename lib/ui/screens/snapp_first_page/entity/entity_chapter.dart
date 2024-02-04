import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_chapter.freezed.dart';

part 'entity_chapter.g.dart';

@freezed
class EntityChapter with _$EntityChapter {
  const factory EntityChapter({
    @Default("")String title,
    @Default("")int id,
    @Default("")String imageLink,
    @Default("")bool isBought,
  }) = _EntityChapter;

  factory EntityChapter.fromJson(Map<String, dynamic> json) =>
      _$EntityChapterFromJson(json);
}
