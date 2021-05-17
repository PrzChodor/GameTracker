import 'package:bloc/bloc.dart';

class GamesTabsCubit extends Cubit<bool> {
  GamesTabsCubit() : super(false);

  void switchTab(bool isCompletedTab) {
    emit(isCompletedTab);
  }
}
