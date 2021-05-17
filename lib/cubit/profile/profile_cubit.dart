import 'package:bloc/bloc.dart';
import 'package:gametracker/data/repositories/game_repository.dart';
import 'package:meta/meta.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<List<int>> {
  ProfileCubit() : super([0, 0]);

  Future<void> loadStats() async {
    emit(await GameRepository().getStats());
  }
}
