import 'package:bloc/bloc.dart';
import 'package:gametracker/data/models/game.dart';
import 'package:gametracker/data/repositories/game_repository.dart';
import 'list_state.dart';

class CompletedListCubit extends Cubit<ListState> {
  CompletedListCubit() : super(Loading([]));

  ///Load all games in the completed games library
  Future<void> loadGames() async {
    List<Game> results = [];

    //Wait minimum of 300ms to avoid visual bugs
    await Future.wait([
      GameRepository().getCompletedGames().then((value) => results = value),
      Future.delayed(Duration(milliseconds: 300))
    ]);

    for (var result in results) {
      //Change list so that the state change is emitted
      List<Game> updatedList = [];
      updatedList.addAll(state.games);
      updatedList.add(result);
      emit(AddingResults(updatedList));
      //Delay to play adding animation
      await Future.delayed(Duration(milliseconds: 100));
    }
    emit(Results(state.games));
  }

  ///Visually remove game from list
  void removeItem(
      int index, void animatedListRemove(int index, List<Game> games)) {
    List<Game> updatedList = [];
    updatedList.addAll(state.games);
    updatedList.removeAt(index);
    //Call remove on AnimatedList
    animatedListRemove(index, state.games);
    emit(Results(updatedList));
  }
}
