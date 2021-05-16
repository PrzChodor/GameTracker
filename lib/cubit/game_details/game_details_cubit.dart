import 'package:bloc/bloc.dart';

class GameDetailsCubit extends Cubit<double> {
  GameDetailsCubit() : super(0.0);

  void setNewPage(double page) {
    emit(page);
  }
}
