import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gametracker/data/repositories/user_repository.dart';
import 'package:gametracker/helpers/validators.dart';

part 'register_state.dart';
part 'register_cubit.freezed.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(Empty());

  ///On email change check if it's valid and emit new state
  Future<void> emailChanged(String email) async {
    emit(
      Empty(
          isEmailValid: Validators.isValidEmail(email),
          isPasswordValid: state.isPasswordValid,
          arePasswordMatching: state.arePasswordMatching,
          isUsernameValid: state.isUsernameValid),
    );
  }

  ///On password change check if it's valid and emit new state
  Future<void> passwordChanged(String password) async {
    emit(
      Empty(
          isEmailValid: state.isEmailValid,
          isPasswordValid: Validators.isValidPassword(password),
          arePasswordMatching: state.arePasswordMatching,
          isUsernameValid: state.isUsernameValid),
    );
  }

  ///On password or confirmation change check if they're the same
  ///and emit new state
  Future<void> passwordsMatchChanged(
      String password, String confirmation) async {
    emit(
      Empty(
          isEmailValid: state.isEmailValid,
          isPasswordValid: Validators.isValidPassword(password),
          arePasswordMatching: password == confirmation,
          isUsernameValid: state.isUsernameValid),
    );
  }

  ///On username change check if it's valid and emit new state
  Future<void> usernameChanged(String username) async {
    emit(
      Empty(
          isEmailValid: state.isEmailValid,
          isPasswordValid: state.isPasswordValid,
          arePasswordMatching: state.arePasswordMatching,
          isUsernameValid: Validators.isValidUsername(username)),
    );
  }

  ///Try creating new account with given credentials
  Future<void> formSubmitted(
      String email, String password, String username) async {
    emit(Loading());
    await UserRepository()
        .signUp(email: email, password: password, username: username)
        .then((_) => emit(Success()))
        .catchError((error) => emit(Failure(error.message)));
  }
}
