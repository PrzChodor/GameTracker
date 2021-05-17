part of 'game_list_item_cubit.dart';

@freezed
class GameListItemState with _$GameListItemState {
  const factory GameListItemState.initial() = Initial;

  const factory GameListItemState.notAdded() = NotAdded;

  const factory GameListItemState.added() = Added;

  const factory GameListItemState.completed() = Completed;
}
