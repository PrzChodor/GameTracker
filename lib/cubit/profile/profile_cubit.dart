import 'package:bloc/bloc.dart';
import 'package:gametracker/data/repositories/game_repository.dart';

class ProfileCubit extends Cubit<List<int>> {
  ProfileCubit() : super([0, 0]);

  ///Load profile stats as list
  ///
  ///list[0] - number of added games
  ///
  ///list[1] - number of completed games
  Future<void> loadStats() async {
    emit(await GameRepository().getStats());
  }
}
