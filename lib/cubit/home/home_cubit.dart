import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(Games());

  int currentPage = 0;

  void pageChanged(int page) {
    currentPage = page;

    if (currentPage == 0) {
      emit(Games());
    } else if (page == 1) {
      emit(Search());
    } else {
      emit(Profile());
    }
  }
}
