import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gametracker/data/models/game.dart';
import 'package:gametracker/data/repositories/game_repository.dart';

part 'search_state.dart';
part 'search_cubit.freezed.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(Initial(false));

  int _pageCount = 1;
  int currentPage = 0;
  String? _currentTerm;
  bool _isLoading = false;

  Future<void> getFirstPage() async {
    emit(Searching(false));
    _isLoading = true;
    await GameRepository().getPopular().then((results) async {
      _pageCount = 10;
      currentPage = 0;
      _currentTerm = null;
      emit(Results([], false, false, state.isButtonDisplayed));
      for (var result in results) {
        List<Game> updatedList = [];
        updatedList.addAll((state as Results).games);
        updatedList.add(result);
        emit(Results(updatedList, true, false, state.isButtonDisplayed));
        await Future.delayed(Duration(milliseconds: 150));
      }
    });
    _isLoading = false;
  }

  Future<void> searchForGames(String term) async {
    emit(Searching(false));
    _isLoading = true;
    await GameRepository().searchForGames(term).then((results) async {
      _pageCount = ((results[1] as int) / 10).ceil();
      currentPage = 0;
      _currentTerm = term;

      emit(Results([], false, false, state.isButtonDisplayed));
      for (var result in results[0]) {
        List<Game> updatedList = [];
        updatedList.addAll((state as Results).games);
        updatedList.add(result);
        emit(Results(updatedList, true, false, state.isButtonDisplayed));
        await Future.delayed(Duration(milliseconds: 150));
      }
    });
    _isLoading = false;
  }

  Future<void> getNextPage() async {
    if (currentPage + 1 == _pageCount || _isLoading) return;

    _isLoading = true;
    emit(Results(
        (state as Results).games, false, true, state.isButtonDisplayed));
    await GameRepository()
        .getNextPage(++currentPage * 10, _currentTerm)
        .then((results) async {
      for (var result in results) {
        List<Game> updatedList = [];
        updatedList.addAll((state as Results).games);
        updatedList.add(result);
        emit(Results(updatedList, true, false, state.isButtonDisplayed));
        await Future.delayed(Duration(milliseconds: 150));
      }
    });
    _isLoading = false;
  }

  void checkScrollOffset(ScrollController controller) {
    if (state is Results) {
      if (controller.offset >= 500 && !(state as Results).isButtonDisplayed) {
        emit(Results((state as Results).games, false,
            (state as Results).isLoadingNext, true));
      }

      if (controller.offset < 500 && (state as Results).isButtonDisplayed) {
        emit(Results((state as Results).games, false,
            (state as Results).isLoadingNext, false));
      }
    }
  }
}

class NoNextPageException implements Exception {}
