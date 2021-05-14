part of 'reset_password_cubit.dart';

@freezed
class ResetPasswordState with _$ResetPasswordState {
  const factory ResetPasswordState.empty(
      {@Default(true) bool isEmailValid}) = Empty;

  const factory ResetPasswordState.loading(
      {@Default(true) bool isEmailValid}) = Loading;

  const factory ResetPasswordState.failure(String errorMessage,
      {@Default(true) bool isEmailValid}) = Failure;

  const factory ResetPasswordState.success(
      {@Default(true) bool isEmailValid}) = Success;
}
