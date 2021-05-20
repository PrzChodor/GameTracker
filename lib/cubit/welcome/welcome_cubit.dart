import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gametracker/data/repositories/user_repository.dart';

part 'welcome_state.dart';
part 'welcome_cubit.freezed.dart';

class WelcomeCubit extends Cubit<WelcomeState> {
  WelcomeCubit() : super(Initial());

  ///Try logging in with google
  Future<void> logInWithGoogle() async {
    await UserRepository()
        .signInWithGoogle()
        .then((_) => emit(Success()))
        .catchError((error) => Failure(error.message));
  }

  ///Try logging in with facebook
  Future<void> logInWithFacebook() async {
    await UserRepository()
        .signInWithFacebook()
        .then((_) => emit(Success()))
        .catchError((error) => Failure(error.message));
  }
}
