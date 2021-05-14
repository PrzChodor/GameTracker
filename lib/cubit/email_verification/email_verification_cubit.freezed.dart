// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'email_verification_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EmailVerificationStateTearOff {
  const _$EmailVerificationStateTearOff();

  NotVerified notVerified(int currentTick) {
    return NotVerified(
      currentTick,
    );
  }

  Verified verified() {
    return const Verified();
  }
}

/// @nodoc
const $EmailVerificationState = _$EmailVerificationStateTearOff();

/// @nodoc
mixin _$EmailVerificationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int currentTick) notVerified,
    required TResult Function() verified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int currentTick)? notVerified,
    TResult Function()? verified,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotVerified value) notVerified,
    required TResult Function(Verified value) verified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotVerified value)? notVerified,
    TResult Function(Verified value)? verified,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailVerificationStateCopyWith<$Res> {
  factory $EmailVerificationStateCopyWith(EmailVerificationState value,
          $Res Function(EmailVerificationState) then) =
      _$EmailVerificationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmailVerificationStateCopyWithImpl<$Res>
    implements $EmailVerificationStateCopyWith<$Res> {
  _$EmailVerificationStateCopyWithImpl(this._value, this._then);

  final EmailVerificationState _value;
  // ignore: unused_field
  final $Res Function(EmailVerificationState) _then;
}

/// @nodoc
abstract class $NotVerifiedCopyWith<$Res> {
  factory $NotVerifiedCopyWith(
          NotVerified value, $Res Function(NotVerified) then) =
      _$NotVerifiedCopyWithImpl<$Res>;
  $Res call({int currentTick});
}

/// @nodoc
class _$NotVerifiedCopyWithImpl<$Res>
    extends _$EmailVerificationStateCopyWithImpl<$Res>
    implements $NotVerifiedCopyWith<$Res> {
  _$NotVerifiedCopyWithImpl(
      NotVerified _value, $Res Function(NotVerified) _then)
      : super(_value, (v) => _then(v as NotVerified));

  @override
  NotVerified get _value => super._value as NotVerified;

  @override
  $Res call({
    Object? currentTick = freezed,
  }) {
    return _then(NotVerified(
      currentTick == freezed
          ? _value.currentTick
          : currentTick // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$NotVerified implements NotVerified {
  const _$NotVerified(this.currentTick);

  @override
  final int currentTick;

  @override
  String toString() {
    return 'EmailVerificationState.notVerified(currentTick: $currentTick)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NotVerified &&
            (identical(other.currentTick, currentTick) ||
                const DeepCollectionEquality()
                    .equals(other.currentTick, currentTick)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(currentTick);

  @JsonKey(ignore: true)
  @override
  $NotVerifiedCopyWith<NotVerified> get copyWith =>
      _$NotVerifiedCopyWithImpl<NotVerified>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int currentTick) notVerified,
    required TResult Function() verified,
  }) {
    return notVerified(currentTick);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int currentTick)? notVerified,
    TResult Function()? verified,
    required TResult orElse(),
  }) {
    if (notVerified != null) {
      return notVerified(currentTick);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotVerified value) notVerified,
    required TResult Function(Verified value) verified,
  }) {
    return notVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotVerified value)? notVerified,
    TResult Function(Verified value)? verified,
    required TResult orElse(),
  }) {
    if (notVerified != null) {
      return notVerified(this);
    }
    return orElse();
  }
}

abstract class NotVerified implements EmailVerificationState {
  const factory NotVerified(int currentTick) = _$NotVerified;

  int get currentTick => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotVerifiedCopyWith<NotVerified> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifiedCopyWith<$Res> {
  factory $VerifiedCopyWith(Verified value, $Res Function(Verified) then) =
      _$VerifiedCopyWithImpl<$Res>;
}

/// @nodoc
class _$VerifiedCopyWithImpl<$Res>
    extends _$EmailVerificationStateCopyWithImpl<$Res>
    implements $VerifiedCopyWith<$Res> {
  _$VerifiedCopyWithImpl(Verified _value, $Res Function(Verified) _then)
      : super(_value, (v) => _then(v as Verified));

  @override
  Verified get _value => super._value as Verified;
}

/// @nodoc

class _$Verified implements Verified {
  const _$Verified();

  @override
  String toString() {
    return 'EmailVerificationState.verified()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Verified);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int currentTick) notVerified,
    required TResult Function() verified,
  }) {
    return verified();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int currentTick)? notVerified,
    TResult Function()? verified,
    required TResult orElse(),
  }) {
    if (verified != null) {
      return verified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotVerified value) notVerified,
    required TResult Function(Verified value) verified,
  }) {
    return verified(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotVerified value)? notVerified,
    TResult Function(Verified value)? verified,
    required TResult orElse(),
  }) {
    if (verified != null) {
      return verified(this);
    }
    return orElse();
  }
}

abstract class Verified implements EmailVerificationState {
  const factory Verified() = _$Verified;
}
