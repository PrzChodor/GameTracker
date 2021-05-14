import 'package:bloc/bloc.dart';
import 'package:gametracker/helpers/validators.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gametracker/repositories/user_repository.dart';

part 'reset_password_state.dart';
part 'reset_password_cubit.freezed.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  ResetPasswordCubit() : super(Empty());

  Future<void> emailChanged(String email) async {
    emit(Empty(isEmailValid: Validators.isValidEmail(email)));
  }

  Future<void> resetPassword(String email) async {
    emit(Loading());
    await UserRepository()
        .resetPassword(email)
        .then((_) => emit(Success()))
        .catchError((error) => emit(Failure(error.message)));
  }
}
