import 'package:bloc/bloc.dart';
import 'package:gametracker/data/models/game.dart';
import 'package:gametracker/data/repositories/game_repository.dart';
import 'list_state.dart';

class CompletedListCubit extends Cubit<ListState> {
  CompletedListCubit() : super(Loading([]));

  Future<void> loadGames() async {
    List<Game> results = [];

    await Future.wait([
      GameRepository().getCompletedGames().then((value) => results = value),
      Future.delayed(Duration(milliseconds: 300))
    ]);

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
