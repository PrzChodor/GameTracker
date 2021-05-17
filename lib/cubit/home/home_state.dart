part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.games() = Games;

  const factory HomeState.search() = Search;

  const factory HomeState.profile() = Profile;
}