import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gametracker/data/models/game.dart';
import 'package:gametracker/data/repositories/game_repository.dart';

part 'game_list_item_state.dart';
part 'game_list_item_cubit.freezed.dart';

class GameListItemCubit extends Cubit<GameListItemState> {
  GameListItemCubit() : super(Initial());

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

  Future<void> addToLibrary(Game game) async {
    await GameRepository().addGameToLibrary(game);
    emit(Added());
  }

  Future<void> completeGame(Game game) async {
    await GameRepository().completeGame(game);
    emit(Completed());
  }

  Future<void> removeFromLibrary(Game game) async {
    await GameRepository().removeFromLibrary(game);
    emit(NotAdded());
  }

  Future<void> notCompleted(Game game) async {
    await GameRepository().notCompleted(game);
    emit(Added());
  }
}
