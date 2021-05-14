import 'package:bloc/bloc.dart';

class PasswordCubit extends Cubit<bool> {
  PasswordCubit() : super(false);

  Future<void> switchState() async {
    emit(!state);
  }
}
