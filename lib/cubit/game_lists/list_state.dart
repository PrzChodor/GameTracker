import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gametracker/data/models/game.dart';

part 'list_state.freezed.dart';

@freezed
class ListState with _$ListState {
  const factory ListState.loading(List<Game> games) = Loading;

  const factory ListState.results(List<Game> games) = Results;

  const factory ListState.addingResults(List<Game> games) = AddingResults;
}
