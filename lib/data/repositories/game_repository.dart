import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:gametracker/data/models/game.dart';
import 'package:gametracker/data/repositories/user_repository.dart';
import 'package:http/http.dart' as http;

class GameRepository {
  final RemoteConfig _remoteConfig;
  final FirebaseDatabase _firebaseDatabase;

  GameRepository._(this._remoteConfig, this._firebaseDatabase);

  static final GameRepository _instance = GameRepository._(
      RemoteConfig.instance..fetchAndActivate(),
      FirebaseDatabase(
          databaseURL:
              'https://gametracker-f3817-default-rtdb.europe-west1.firebasedatabase.app/'));

  factory GameRepository() {
    return _instance;
  }
  Future<List<Game>> getPopular() async {
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
            where name ~ *""* & summary != null & cover != null & involved_companies != null & screenshots != null & first_release_date != null & follows != null;
            limit 10;
            sort follows desc;
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
            where summary != null & cover != null & involved_companies != null & screenshots != null & first_release_date != null;
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
            where summary != null & cover != null & involved_companies != null & screenshots != null & first_release_date != null;
            search "$term";
          ''',
    );
    int count = jsonDecode(countResponse.body)['count'];

    List<dynamic> results = [listOfGames, count];

    return results;
  }

  Future<List<Game>> getNextPage(int pageStart, String? term) async {
    final response = await http.post(
      Uri.https('api.igdb.com', 'v4/games'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Client-ID': _remoteConfig.getString('IGDB_CLIENT_ID'),
        'Authorization':
            'Bearer ${_remoteConfig.getString('IGDB_ACCESS_TOKEN')}',
      },
      body: term != null
          ? '''
            fields name, rating, summary, first_release_date, genres.name, platforms.abbreviation, cover.image_id, screenshots.image_id, involved_companies.company.name, involved_companies.developer;
            where summary != null & cover != null & involved_companies != null & screenshots != null & first_release_date != null;
            search "$term";
            limit 10;
            offset $pageStart;
          '''
          : '''
            fields name, rating, summary, first_release_date, genres.name, platforms.abbreviation, cover.image_id, screenshots.image_id, involved_companies.company.name, involved_companies.developer;
            where name ~ *""* & summary != null & cover != null & involved_companies != null & screenshots != null & first_release_date != null & follows != null;
            limit 10;
            sort follows desc;
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

  Future<void> addGameToLibrary(Game game) async {
    var database = _firebaseDatabase.reference();
    await database
        .child(
          'users/${UserRepository().getUid()!}/collection/playNext/${game.id}',
        )
        .set(game.toJson());
  }

  Future<void> completeGame(Game game) async {
    var database = _firebaseDatabase.reference();
    await database
        .child(
          'users/${UserRepository().getUid()!}/collection/playNext/${game.id}',
        )
        .remove();

    await database
        .child(
          'users/${UserRepository().getUid()!}/collection/completed/${game.id}',
        )
        .set(game.toJson());
  }

  Future<bool> isAdded(Game game) async {
    var database = _firebaseDatabase.reference();

    var snapshot = await database
        .child(
          'users/${UserRepository().getUid()!}/collection/playNext/${game.id}',
        )
        .once();

    if (snapshot.value == null) {
      return false;
    }

    return true;
  }

  Future<bool> isCompleted(Game game) async {
    var database = _firebaseDatabase.reference();

    var snapshot = await database
        .child(
          'users/${UserRepository().getUid()!}/collection/completed/${game.id}',
        )
        .once();

    if (snapshot.value == null) {
      return false;
    }

    return true;
  }

  Future<void> notCompleted(Game game) async {
    var database = _firebaseDatabase.reference();
    await database
        .child(
          'users/${UserRepository().getUid()!}/collection/completed/${game.id}',
        )
        .remove();

    await database
        .child(
          'users/${UserRepository().getUid()!}/collection/playNext/${game.id}',
        )
        .set(game.toJson());
  }

  Future<void> removeFromLibrary(Game game) async {
    var database = _firebaseDatabase.reference();
    await database
        .child(
          'users/${UserRepository().getUid()!}/collection/playNext/${game.id}',
        )
        .remove();
  }

  Future<List<int>> getStats() async {
    var database = _firebaseDatabase.reference();
    int completed = await database
        .child(
          'users/${UserRepository().getUid()!}/collection/completed',
        )
        .once()
        .then((response) => response.value != null ? response.value.length : 0);
    int added = await database
        .child(
          'users/${UserRepository().getUid()!}/collection/playNext',
        )
        .once()
        .then((response) =>
            (response.value != null ? response.value.length : 0) + completed);

    return [added, completed];
  }

  Future<List<Game>> getAddedGames() async {
    var database = _firebaseDatabase.reference();
    DataSnapshot added = await database
        .child(
          'users/${UserRepository().getUid()!}/collection/playNext',
        )
        .once();
    List<Game> results = [];
    if (added.value != null) {
      added.value.forEach((key, value) =>
          results.add(Game.fromJson(Map<String, dynamic>.from(value))));
    }
    return results;
  }

  Future<List<Game>> getCompletedGames() async {
    var database = _firebaseDatabase.reference();
    DataSnapshot added = await database
        .child(
          'users/${UserRepository().getUid()!}/collection/completed',
        )
        .once();
    List<Game> results = [];
    if (added.value != null) {
      added.value.forEach((key, value) =>
          results.add(Game.fromJson(Map<String, dynamic>.from(value))));
    }
    return results;
  }
}
