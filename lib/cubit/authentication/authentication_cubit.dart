import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:gametracker/repositories/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_state.dart';
part 'authentication_cubit.freezed.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit() : super(Uninitialized());

  Future<void> appStarted() async {
    //Wait minimum one second
    await Future.wait(
        [Firebase.initializeApp(), Future.delayed(Duration(seconds: 1))]);

    try {
      final isSignedIn = await UserRepository().isSignedIn();

      if (!isSignedIn) {
        return emit(Unauthenticated());
      }

      loggedIn();
    } catch (_) {
      emit(Unauthenticated());
    }
  }

  Future<void> loggedIn() async {
    if (!UserRepository().hasVerifiedEmail()) {
      emit(EmailNotVerified());
      return;
    }

    emit(Authenticated());
  }

  Future<void> loggedOut() async {
    emit(Unauthenticated());
    UserRepository().signOut();
  }
}
