part of 'register_cubit.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.empty(
      {@Default(true) bool isEmailValid,
      @Default(true) bool isPasswordValid,
      @Default(true) bool arePasswordMatching,
      @Default(true) bool isUsernameValid}) = Empty;

  const factory RegisterState.loading(
      {@Default(true) bool isEmailValid,
      @Default(true) bool isPasswordValid,
      @Default(true) bool arePasswordMatching,
      @Default(true) bool isUsernameValid}) = Loading;

  const factory RegisterState.failure(String errorMessage,
      {@Default(true) bool isEmailValid,
      @Default(true) bool isPasswordValid,
      @Default(true) bool arePasswordMatching,
      @Default(true) bool isUsernameValid}) = Failure;

  const factory RegisterState.success(
      {@Default(true) bool isEmailValid,
      @Default(true) bool isPasswordValid,
      @Default(true) bool arePasswordMatching,
      @Default(true) bool isUsernameValid}) = Success;
}
