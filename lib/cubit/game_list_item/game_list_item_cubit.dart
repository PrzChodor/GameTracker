import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gametracker/data/models/game.dart';
import 'package:gametracker/data/repositories/game_repository.dart';

part 'game_list_item_state.dart';
part 'game_list_item_cubit.freezed.dart';

class GameListItemCubit extends Cubit<GameListItemState> {
  GameListItemCubit() : super(Initial());

  ///To check state of game when loaded
  Future<void> checkState(Game game) async {
    if (await GameRepository().isAdded(game)) {
      emit(Added());
      return;
    }

    if (await GameRepository().isCompleted(game)) {
      emit(Completed());
      return;
    }

    emit(NotAdded());
  }

  ///Add game to play next library
  ///
  ///Set [changeState] to false when removing from list to avoid visual bug
  Future<void> addToLibrary(Game game, bool changeState) async {
    await GameRepository().addGameToLibrary(game);
    if (changeState) {
      emit(Added());
    }
  }

  ///Add game to completed games library
  ///
  ///Set [changeState] to false when removing from list to avoid visual bug
  Future<void> completeGame(Game game, bool changeState) async {
    await GameRepository().completeGame(game);
    if (changeState) {
      emit(Completed());
    }
  }

  ///Delete game from play next library
  ///
  ///Set [changeState] to false when removing from list to avoid visual bug
  Future<void> removeFromLibrary(Game game, bool changeState) async {
    await GameRepository().removeFromLibrary(game);
    if (changeState) {
      emit(NotAdded());
    }
  }

  ///Delete game from completed and add to play next
  ///
  ///Set [changeState] to false when removing from list to avoid visual bug
  Future<void> notCompleted(Game game, bool changeState) async {
    await GameRepository().notCompleted(game);
    if (changeState) {
      emit(Added());
    }
  }
}
