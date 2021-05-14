part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.empty(
      {@Default(true) bool isEmailValid,
      @Default(true) bool isPasswordValid}) = Empty;

  const factory LoginState.loading(
      {@Default(true) bool isEmailValid,
      @Default(true) bool isPasswordValid}) = Loading;

  const factory LoginState.failure(String errorMessage,
      {@Default(true) bool isEmailValid,
      @Default(true) bool isPasswordValid}) = Failure;

  const factory LoginState.success(
      {@Default(true) bool isEmailValid,
      @Default(true) bool isPasswordValid}) = Success;
}
