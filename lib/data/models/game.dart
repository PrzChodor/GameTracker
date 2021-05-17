import 'package:freezed_annotation/freezed_annotation.dart';

part 'game.freezed.dart';
part 'game.g.dart';

@freezed
class Game with _$Game {
  factory Game({
    required int id,
    required String name,
    required String developers,
    required String cover,
    required List<String> screenshots,
    required double rating,
    required int date,
    required List<String> genres,
    required List<String> platforms,
    required String summary,
  }) = _Game;

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);

  factory Game.fromIGDB(Map<String, dynamic> json) {
    return Game(
        id: json['id'],
        name: json['name'],
        developers: (json['involved_companies'] as List)
            .firstWhere((company) => company['developer'] as bool,
                orElse: () => {
                      'company': {'name': 'N/A'}
                    })['company']['name'],
        cover:
            'https://images.igdb.com/igdb/image/upload/t_cover_big/${json['cover']['image_id']}.jpg',
        screenshots: json['screenshots']
            .map<String>((image) =>
                'https://images.igdb.com/igdb/image/upload/t_1080p/${image['image_id']}.jpg')
            .toList(),
        rating: json['rating'],
        date: json['first_release_date'],
        summary: json['summary'],
        genres: json['genres'] != null
            ? json['genres']
                .map<String>((genre) => genre['name'].toString())
                .toList()
            : [],
        platforms: json['platforms']
            .map<String>((platform) => platform['abbreviation'].toString())
            .toList());
  }
}
