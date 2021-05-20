import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gametracker/cubit/login/login_cubit.dart';
import 'package:gametracker/data/models/game.dart';
import 'package:gametracker/data/repositories/game_repository.dart';

part 'search_state.dart';
part 'search_cubit.freezed.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(Initial([], false));

  int currentPage = 0;
  double currentScrollOffset = 0.0;

  int _pageCount = 1;
  String? _currentTerm;

  ///Get most popular games list
  Future<void> getPopular() async {
    emit(Searching([], false));
    await GameRepository().getPopular().then((results) async {
      _pageCount = 10;
      currentPage = 0;
      _currentTerm = null;
      await loadResults(results);
    });
  }

  ///Search database for games matching with [term]
  Future<void> searchForGames(String term) async {
    emit(Searching([], false));
    await GameRepository().searchForGames(term).then((results) async {
      _pageCount = ((results[1] as int) / 10).ceil();
      currentPage = 0;
      _currentTerm = term;
      await loadResults(results[0]);
    });
  }

  ///Get next page of 10 games
  Future<void> getNextPage() async {
    if (currentPage + 1 == _pageCount) return;
    emit(LoadingNextPage(state.games, state.isButtonDisplayed));
    await GameRepository()
        .getNextPage(++currentPage * 10, _currentTerm)
        .then((results) async {
      await loadResults(results);
    });
  }

  ///Load results one by one for animation
  Future<void> loadResults(List<Game> results) async {
    for (var result in results) {
      //Change list so that the state change is emitted
      List<Game> updatedList = [];
      updatedList.addAll(state.games);
      updatedList.add(result);
      emit(AddingResults(updatedList, state.isButtonDisplayed));
      //Delay for animation
      await Future.delayed(Duration(milliseconds: 150));
    }
    emit(Results(state.games, state.isButtonDisplayed));
  }

  ///Checks the scroll offset and shows scroll up button if it's 
  ///scrolled down enough and hides it otherwise
  void checkScrollOffset(ScrollController controller) {
    if (state is! Loading) {
      currentScrollOffset = controller.offset;
      if (currentScrollOffset >= 500 && !state.isButtonDisplayed) {
        emit(Results((state as Results).games, true));
      }

      if (currentScrollOffset < 500 && state.isButtonDisplayed) {
        emit(Results((state as Results).games, false));
      }
    }
  }
}
