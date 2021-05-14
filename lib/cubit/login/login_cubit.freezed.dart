// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

  Empty empty({bool isEmailValid = true, bool isPasswordValid = true}) {
    return Empty(
      isEmailValid: isEmailValid,
      isPasswordValid: isPasswordValid,
    );
  }

  Loading loading({bool isEmailValid = true, bool isPasswordValid = true}) {
    return Loading(
      isEmailValid: isEmailValid,
      isPasswordValid: isPasswordValid,
    );
  }

  Failure failure(String errorMessage,
      {bool isEmailValid = true, bool isPasswordValid = true}) {
    return Failure(
      errorMessage,
      isEmailValid: isEmailValid,
      isPasswordValid: isPasswordValid,
    );
  }

  Success success({bool isEmailValid = true, bool isPasswordValid = true}) {
    return Success(
      isEmailValid: isEmailValid,
      isPasswordValid: isPasswordValid,
    );
  }
}

/// @nodoc
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  bool get isEmailValid => throw _privateConstructorUsedError;
  bool get isPasswordValid => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isEmailValid, bool isPasswordValid) empty,
    required TResult Function(bool isEmailValid, bool isPasswordValid) loading,
    required TResult Function(
            String errorMessage, bool isEmailValid, bool isPasswordValid)
        failure,
    required TResult Function(bool isEmailValid, bool isPasswordValid) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isEmailValid, bool isPasswordValid)? empty,
    TResult Function(bool isEmailValid, bool isPasswordValid)? loading,
    TResult Function(
            String errorMessage, bool isEmailValid, bool isPasswordValid)?
        failure,
    TResult Function(bool isEmailValid, bool isPasswordValid)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
    required TResult Function(Loading value) loading,
    required TResult Function(Failure value) failure,
    required TResult Function(Success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(Loading value)? loading,
    TResult Function(Failure value)? failure,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call({bool isEmailValid, bool isPasswordValid});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object? isEmailValid = freezed,
    Object? isPasswordValid = freezed,
  }) {
    return _then(_value.copyWith(
      isEmailValid: isEmailValid == freezed
          ? _value.isEmailValid
          : isEmailValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordValid: isPasswordValid == freezed
          ? _value.isPasswordValid
          : isPasswordValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class $EmptyCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory $EmptyCopyWith(Empty value, $Res Function(Empty) then) =
      _$EmptyCopyWithImpl<$Res>;
  @override
  $Res call({bool isEmailValid, bool isPasswordValid});
}

/// @nodoc
class _$EmptyCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $EmptyCopyWith<$Res> {
  _$EmptyCopyWithImpl(Empty _value, $Res Function(Empty) _then)
      : super(_value, (v) => _then(v as Empty));

  @override
  Empty get _value => super._value as Empty;

  @override
  $Res call({
    Object? isEmailValid = freezed,
    Object? isPasswordValid = freezed,
  }) {
    return _then(Empty(
      isEmailValid: isEmailValid == freezed
          ? _value.isEmailValid
          : isEmailValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordValid: isPasswordValid == freezed
          ? _value.isPasswordValid
          : isPasswordValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$Empty implements Empty {
  const _$Empty({this.isEmailValid = true, this.isPasswordValid = true});

  @JsonKey(defaultValue: true)
  @override
  final bool isEmailValid;
  @JsonKey(defaultValue: true)
  @override
  final bool isPasswordValid;

  @override
  String toString() {
    return 'LoginState.empty(isEmailValid: $isEmailValid, isPasswordValid: $isPasswordValid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Empty &&
            (identical(other.isEmailValid, isEmailValid) ||
                const DeepCollectionEquality()
                    .equals(other.isEmailValid, isEmailValid)) &&
            (identical(other.isPasswordValid, isPasswordValid) ||
                const DeepCollectionEquality()
                    .equals(other.isPasswordValid, isPasswordValid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isEmailValid) ^
      const DeepCollectionEquality().hash(isPasswordValid);

  @JsonKey(ignore: true)
  @override
  $EmptyCopyWith<Empty> get copyWith =>
      _$EmptyCopyWithImpl<Empty>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isEmailValid, bool isPasswordValid) empty,
    required TResult Function(bool isEmailValid, bool isPasswordValid) loading,
    required TResult Function(
            String errorMessage, bool isEmailValid, bool isPasswordValid)
        failure,
    required TResult Function(bool isEmailValid, bool isPasswordValid) success,
  }) {
    return empty(isEmailValid, isPasswordValid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isEmailValid, bool isPasswordValid)? empty,
    TResult Function(bool isEmailValid, bool isPasswordValid)? loading,
    TResult Function(
            String errorMessage, bool isEmailValid, bool isPasswordValid)?
        failure,
    TResult Function(bool isEmailValid, bool isPasswordValid)? success,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(isEmailValid, isPasswordValid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
    required TResult Function(Loading value) loading,
    required TResult Function(Failure value) failure,
    required TResult Function(Success value) success,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(Loading value)? loading,
    TResult Function(Failure value)? failure,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty implements LoginState {
  const factory Empty({bool isEmailValid, bool isPasswordValid}) = _$Empty;

  @override
  bool get isEmailValid => throw _privateConstructorUsedError;
  @override
  bool get isPasswordValid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $EmptyCopyWith<Empty> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({bool isEmailValid, bool isPasswordValid});
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;

  @override
  $Res call({
    Object? isEmailValid = freezed,
    Object? isPasswordValid = freezed,
  }) {
    return _then(Loading(
      isEmailValid: isEmailValid == freezed
          ? _value.isEmailValid
          : isEmailValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordValid: isPasswordValid == freezed
          ? _value.isPasswordValid
          : isPasswordValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading({this.isEmailValid = true, this.isPasswordValid = true});

  @JsonKey(defaultValue: true)
  @override
  final bool isEmailValid;
  @JsonKey(defaultValue: true)
  @override
  final bool isPasswordValid;

  @override
  String toString() {
    return 'LoginState.loading(isEmailValid: $isEmailValid, isPasswordValid: $isPasswordValid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loading &&
            (identical(other.isEmailValid, isEmailValid) ||
                const DeepCollectionEquality()
                    .equals(other.isEmailValid, isEmailValid)) &&
            (identical(other.isPasswordValid, isPasswordValid) ||
                const DeepCollectionEquality()
                    .equals(other.isPasswordValid, isPasswordValid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isEmailValid) ^
      const DeepCollectionEquality().hash(isPasswordValid);

  @JsonKey(ignore: true)
  @override
  $LoadingCopyWith<Loading> get copyWith =>
      _$LoadingCopyWithImpl<Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isEmailValid, bool isPasswordValid) empty,
    required TResult Function(bool isEmailValid, bool isPasswordValid) loading,
    required TResult Function(
            String errorMessage, bool isEmailValid, bool isPasswordValid)
        failure,
    required TResult Function(bool isEmailValid, bool isPasswordValid) success,
  }) {
    return loading(isEmailValid, isPasswordValid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isEmailValid, bool isPasswordValid)? empty,
    TResult Function(bool isEmailValid, bool isPasswordValid)? loading,
    TResult Function(
            String errorMessage, bool isEmailValid, bool isPasswordValid)?
        failure,
    TResult Function(bool isEmailValid, bool isPasswordValid)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(isEmailValid, isPasswordValid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
    required TResult Function(Loading value) loading,
    required TResult Function(Failure value) failure,
    required TResult Function(Success value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(Loading value)? loading,
    TResult Function(Failure value)? failure,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements LoginState {
  const factory Loading({bool isEmailValid, bool isPasswordValid}) = _$Loading;

  @override
  bool get isEmailValid => throw _privateConstructorUsedError;
  @override
  bool get isPasswordValid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $LoadingCopyWith<Loading> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
  @override
  $Res call({String errorMessage, bool isEmailValid, bool isPasswordValid});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(Failure _value, $Res Function(Failure) _then)
      : super(_value, (v) => _then(v as Failure));

  @override
  Failure get _value => super._value as Failure;

  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? isEmailValid = freezed,
    Object? isPasswordValid = freezed,
  }) {
    return _then(Failure(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isEmailValid: isEmailValid == freezed
          ? _value.isEmailValid
          : isEmailValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordValid: isPasswordValid == freezed
          ? _value.isPasswordValid
          : isPasswordValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$Failure implements Failure {
  const _$Failure(this.errorMessage,
      {this.isEmailValid = true, this.isPasswordValid = true});

  @override
  final String errorMessage;
  @JsonKey(defaultValue: true)
  @override
  final bool isEmailValid;
  @JsonKey(defaultValue: true)
  @override
  final bool isPasswordValid;

  @override
  String toString() {
    return 'LoginState.failure(errorMessage: $errorMessage, isEmailValid: $isEmailValid, isPasswordValid: $isPasswordValid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Failure &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)) &&
            (identical(other.isEmailValid, isEmailValid) ||
                const DeepCollectionEquality()
                    .equals(other.isEmailValid, isEmailValid)) &&
            (identical(other.isPasswordValid, isPasswordValid) ||
                const DeepCollectionEquality()
                    .equals(other.isPasswordValid, isPasswordValid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(errorMessage) ^
      const DeepCollectionEquality().hash(isEmailValid) ^
      const DeepCollectionEquality().hash(isPasswordValid);

  @JsonKey(ignore: true)
  @override
  $FailureCopyWith<Failure> get copyWith =>
      _$FailureCopyWithImpl<Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isEmailValid, bool isPasswordValid) empty,
    required TResult Function(bool isEmailValid, bool isPasswordValid) loading,
    required TResult Function(
            String errorMessage, bool isEmailValid, bool isPasswordValid)
        failure,
    required TResult Function(bool isEmailValid, bool isPasswordValid) success,
  }) {
    return failure(errorMessage, isEmailValid, isPasswordValid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isEmailValid, bool isPasswordValid)? empty,
    TResult Function(bool isEmailValid, bool isPasswordValid)? loading,
    TResult Function(
            String errorMessage, bool isEmailValid, bool isPasswordValid)?
        failure,
    TResult Function(bool isEmailValid, bool isPasswordValid)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(errorMessage, isEmailValid, isPasswordValid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
    required TResult Function(Loading value) loading,
    required TResult Function(Failure value) failure,
    required TResult Function(Success value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(Loading value)? loading,
    TResult Function(Failure value)? failure,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure implements LoginState {
  const factory Failure(String errorMessage,
      {bool isEmailValid, bool isPasswordValid}) = _$Failure;

  String get errorMessage => throw _privateConstructorUsedError;
  @override
  bool get isEmailValid => throw _privateConstructorUsedError;
  @override
  bool get isPasswordValid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) then) =
      _$SuccessCopyWithImpl<$Res>;
  @override
  $Res call({bool isEmailValid, bool isPasswordValid});
}

/// @nodoc
class _$SuccessCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(Success _value, $Res Function(Success) _then)
      : super(_value, (v) => _then(v as Success));

  @override
  Success get _value => super._value as Success;

  @override
  $Res call({
    Object? isEmailValid = freezed,
    Object? isPasswordValid = freezed,
  }) {
    return _then(Success(
      isEmailValid: isEmailValid == freezed
          ? _value.isEmailValid
          : isEmailValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordValid: isPasswordValid == freezed
          ? _value.isPasswordValid
          : isPasswordValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$Success implements Success {
  const _$Success({this.isEmailValid = true, this.isPasswordValid = true});

  @JsonKey(defaultValue: true)
  @override
  final bool isEmailValid;
  @JsonKey(defaultValue: true)
  @override
  final bool isPasswordValid;

  @override
  String toString() {
    return 'LoginState.success(isEmailValid: $isEmailValid, isPasswordValid: $isPasswordValid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Success &&
            (identical(other.isEmailValid, isEmailValid) ||
                const DeepCollectionEquality()
                    .equals(other.isEmailValid, isEmailValid)) &&
            (identical(other.isPasswordValid, isPasswordValid) ||
                const DeepCollectionEquality()
                    .equals(other.isPasswordValid, isPasswordValid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isEmailValid) ^
      const DeepCollectionEquality().hash(isPasswordValid);

  @JsonKey(ignore: true)
  @override
  $SuccessCopyWith<Success> get copyWith =>
      _$SuccessCopyWithImpl<Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isEmailValid, bool isPasswordValid) empty,
    required TResult Function(bool isEmailValid, bool isPasswordValid) loading,
    required TResult Function(
            String errorMessage, bool isEmailValid, bool isPasswordValid)
        failure,
    required TResult Function(bool isEmailValid, bool isPasswordValid) success,
  }) {
    return success(isEmailValid, isPasswordValid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isEmailValid, bool isPasswordValid)? empty,
    TResult Function(bool isEmailValid, bool isPasswordValid)? loading,
    TResult Function(
            String errorMessage, bool isEmailValid, bool isPasswordValid)?
        failure,
    TResult Function(bool isEmailValid, bool isPasswordValid)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(isEmailValid, isPasswordValid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
    required TResult Function(Loading value) loading,
    required TResult Function(Failure value) failure,
    required TResult Function(Success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(Loading value)? loading,
    TResult Function(Failure value)? failure,
    TResult Function(Success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements LoginState {
  const factory Success({bool isEmailValid, bool isPasswordValid}) = _$Success;

  @override
  bool get isEmailValid => throw _privateConstructorUsedError;
  @override
  bool get isPasswordValid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SuccessCopyWith<Success> get copyWith => throw _privateConstructorUsedError;
}
