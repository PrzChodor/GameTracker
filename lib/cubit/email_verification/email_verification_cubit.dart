import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gametracker/repositories/user_repository.dart';

part 'email_verification_state.dart';
part 'email_verification_cubit.freezed.dart';

class EmailVerificationCubit extends Cubit<EmailVerificationState> {
  EmailVerificationCubit() : super(NotVerified(0));

  Timer resendDelayTimer = Timer(Duration.zero, () {});
  Timer refreshTimer = Timer(Duration.zero, () {});
  final int resendDelayDuration = 600; // times 50ms

  void waitForVerification() {
    refreshTimer = Timer.periodic(
        Duration(seconds: 5), (timer) => checkVerification(timer));
  }

  Future<void> checkVerification(Timer timer) async {
    await UserRepository().reloadUser();
    if (!UserRepository().hasVerifiedEmail()) return;
    timer.cancel();
    resendDelayTimer.cancel();
    emit(Verified());
  }

  void sendNewEmail() {
    //UserRepository().sendVerificationEmail();
    resendDelayTimer =
        Timer.periodic(Duration(milliseconds: 50), (timer) => delayTick(timer));
  }

  void delayTick(Timer timer) {
    if (timer.tick != resendDelayDuration) {
      emit(NotVerified(timer.tick));
      return;
    }

    emit(NotVerified(0));
    timer.cancel();
  }

  @override
  Future<void> close() {
    resendDelayTimer.cancel();
    refreshTimer.cancel();
    return super.close();
  }
}
