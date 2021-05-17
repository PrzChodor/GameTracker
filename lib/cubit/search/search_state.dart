part of 'search_cubit.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial(bool isButtonDisplayed) = Initial;

  const factory SearchState.searching(bool isButtonDisplayed) = Searching;

  const factory SearchState.results(List<Game> games, bool isNewAdded,
      bool isLoadingNext, bool isButtonDisplayed) = Results;
}
