// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Game _$_$_GameFromJson(Map<String, dynamic> json) {
  return _$_Game(
    id: json['id'] as int,
    name: json['name'] as String,
    developers: json['developers'] as String,
    cover: json['cover'] as String,
    screenshots:
        (json['screenshots'] as List<dynamic>).map((e) => e as String).toList(),
    rating: (json['rating'] as num).toDouble(),
    date: json['date'] as int,
    genres: (json['genres'] as List<dynamic>).map((e) => e as String).toList(),
    platforms:
        (json['platforms'] as List<dynamic>).map((e) => e as String).toList(),
    summary: json['summary'] as String,
  );
}

Map<String, dynamic> _$_$_GameToJson(_$_Game instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'developers': instance.developers,
      'cover': instance.cover,
      'screenshots': instance.screenshots,
      'rating': instance.rating,
      'date': instance.date,
      'genres': instance.genres,
      'platforms': instance.platforms,
      'summary': instance.summary,
    };
