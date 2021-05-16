import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gametracker/data/repositories/user_repository.dart';
import 'package:gametracker/helpers/validators.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(Empty());

  Future<void> emailChanged(String email) async {
    emit(Empty(
        isEmailValid: Validators.isValidEmail(email),
        isPasswordValid: state.isPasswordValid));
  }

  Future<void> passwordChanged(String password) async {
    emit(Empty(
        isEmailValid: state.isEmailValid,
        isPasswordValid: password.isNotEmpty));
  }

  Future<void> logInWithCredentials(String email, String password) async {
    emit(Loading());
    await UserRepository()
        .signInWithCredentials(email, password)
        .then((_) => emit(Success()))
        .catchError((_) => emit(
            Failure('Incorrect email and/or password. Please try again.')));
  }
}
