part of 'authentication_cubit.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.uninitialized() = Uninitialized;
  const factory AuthenticationState.unauthenticated() = Unauthenticated;
  const factory AuthenticationState.authenticated() = Authenticated;
  const factory AuthenticationState.emailNotVerified() = EmailNotVerified;
}
