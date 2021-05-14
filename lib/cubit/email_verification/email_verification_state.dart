part of 'email_verification_cubit.dart';

@freezed
class EmailVerificationState with _$EmailVerificationState {
  const factory EmailVerificationState.notVerified(int currentTick) = NotVerified;
  const factory EmailVerificationState.verified() = Verified;
}