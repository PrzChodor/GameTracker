part of 'welcome_cubit.dart';

@freezed
class WelcomeState with _$WelcomeState {
  const factory WelcomeState.initial() = Initial;

  const factory WelcomeState.loading() = Loading;

  const factory WelcomeState.failure(String errorMessage) = Failure;

  const factory WelcomeState.success() = Success;
}
