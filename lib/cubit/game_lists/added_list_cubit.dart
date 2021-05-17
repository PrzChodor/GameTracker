import 'package:bloc/bloc.dart';
import 'package:gametracker/data/models/game.dart';
import 'package:gametracker/data/repositories/game_repository.dart';

import 'list_state.dart';

class AddedListCubit extends Cubit<ListState> {
  AddedListCubit() : super(Loading([]));

  Future<void> loadGames() async {
    var results = await GameRepository().getAddedGames();
    for (var result in results) {
      List<Game> updatedList = [];
      updatedList.addAll(state.games);
      updatedList.add(result);
      emit(AddingResults(updatedList));
      await Future.delayed(Duration(milliseconds: 100));
    }
    emit(Results(state.games));
  }

  void removeItem(
      int index, void animatedListRemove(int index, List<Game> games)) {
    List<Game> updatedList = [];
    updatedList.addAll(state.games);
    updatedList.removeAt(index);
    animatedListRemove(index, state.games);
    emit(Results(updatedList));
  }
}
