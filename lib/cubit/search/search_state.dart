part of 'search_cubit.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial(List<Game> games, bool isButtonDisplayed) =
      Initial;

  const factory SearchState.searching(
      List<Game> games, bool isButtonDisplayed) = Searching;

  const factory SearchState.results(List<Game> games, bool isButtonDisplayed) =
      Results;

  const factory SearchState.loadingNextPage(
      List<Game> games, bool isButtonDisplayed) = LoadingNextPage;

  const factory SearchState.addingResults(
      List<Game> games, bool isButtonDisplayed) = AddingResults;
}
