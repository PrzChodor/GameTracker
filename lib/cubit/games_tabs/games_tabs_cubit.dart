import 'package:bloc/bloc.dart';

class GamesTabsCubit extends Cubit<bool> {
  GamesTabsCubit() : super(false);

  ///Change current tab
  ///
  ///isCompletedTab = true - completed games tab
  ///
  ///isCompletedTab = false - play next tab
  void switchTab(bool isCompletedTab) {
    emit(isCompletedTab);
  }
}
