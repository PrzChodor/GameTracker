import 'dart:convert';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:gametracker/data/models/game.dart';
import 'package:http/http.dart' as http;

class GameRepository {
  final RemoteConfig _remoteConfig;

  GameRepository._(this._remoteConfig);

  static final GameRepository _instance =
      GameRepository._(RemoteConfig.instance..fetchAndActivate());

  factory GameRepository() {
    return _instance;
  }

  Future<List<dynamic>> searchForGames(String term) async {
    final response = await http.post(
      Uri.https('api.igdb.com', 'v4/games'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Client-ID': _remoteConfig.getString('IGDB_CLIENT_ID'),
        'Authorization':
            'Bearer ${_remoteConfig.getString('IGDB_ACCESS_TOKEN')}',
      },
      body: '''
            fields name, rating, summary, first_release_date, genres.name, platforms.abbreviation, cover.image_id, screenshots.image_id, involved_companies.company.name, involved_companies.developer;
            where summary != null & cover != null & involved_companies != null & screenshots != null & first_release_date != null & rating != null;
            search "$term";
            limit 10;
          ''',
    );

    if (response.statusCode != 200) {
      print(response.statusCode);
      print(response.body);
      return [];
    }

    var jsonResponse = jsonDecode(response.body);
    List<Game> listOfGames = [];

    for (var game in jsonResponse) {
      listOfGames.add(Game.fromIGDB(game));
    }

    final countResponse = await http.post(
      Uri.https('api.igdb.com', 'v4/games/count'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Client-ID': _remoteConfig.getString('IGDB_CLIENT_ID'),
        'Authorization':
            'Bearer ${_remoteConfig.getString('IGDB_ACCESS_TOKEN')}',
      },
      body: '''
            where summary != null & cover != null & involved_companies != null & screenshots != null & first_release_date != null & rating != null;
            search "$term";
          ''',
    );
    int count = jsonDecode(countResponse.body)['count'];

    List<dynamic> results = [listOfGames, count];

    return results;
  }

  Future<List<Game>> getNextPage(int pageStart, String term) async {
    final response = await http.post(
      Uri.https('api.igdb.com', 'v4/games'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Client-ID': _remoteConfig.getString('IGDB_CLIENT_ID'),
        'Authorization':
            'Bearer ${_remoteConfig.getString('IGDB_ACCESS_TOKEN')}',
      },
      body: '''
            fields name, rating, summary, first_release_date, genres.name, platforms.abbreviation, cover.image_id, screenshots.image_id, involved_companies.company.name, involved_companies.developer;
            where summary != null & cover != null & involved_companies != null & screenshots != null & first_release_date != null & rating != null;
            search "$term";
            limit 10;
            offset $pageStart;
          ''',
    );

    if (response.statusCode != 200) {
      print(response.statusCode);
      print(response.body);
      return [];
    }

    var jsonResponse = jsonDecode(response.body);
    List<Game> listOfGames = [];

    for (var game in jsonResponse) {
      listOfGames.add(Game.fromIGDB(game));
    }

    return listOfGames;
  }
}
