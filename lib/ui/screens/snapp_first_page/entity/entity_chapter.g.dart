// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_chapter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EntityChapterImpl _$$EntityChapterImplFromJson(Map<String, dynamic> json) =>
    _$EntityChapterImpl(
      title: json['title'] ?? "",
      id: json['id'] ?? "",
      imageLink: json['imageLink'] ?? "",
      isBought: json['isBought'] ?? "",
    );

Map<String, dynamic> _$$EntityChapterImplToJson(_$EntityChapterImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'id': instance.id,
      'imageLink': instance.imageLink,
      'isBought': instance.isBought,
    };
