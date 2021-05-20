import 'package:bloc/bloc.dart';

class GameDetailsCubit extends Cubit<double> {
  GameDetailsCubit() : super(0.0);

  ///Change current page to the new page
  void setNewPage(double page) {
    emit(page);
  }
}
