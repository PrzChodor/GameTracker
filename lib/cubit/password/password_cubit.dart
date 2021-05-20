import 'package:bloc/bloc.dart';

class PasswordCubit extends Cubit<bool> {
  PasswordCubit() : super(false);

  ///Switch password visibility
  Future<void> switchState() async {
    emit(!state);
  }
}
