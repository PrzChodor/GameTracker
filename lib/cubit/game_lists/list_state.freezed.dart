// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ListStateTearOff {
  const _$ListStateTearOff();

  Loading loading(List<Game> games) {
    return Loading(
      games,
    );
  }

  Results results(List<Game> games) {
    return Results(
      games,
    );
  }

  AddingResults addingResults(List<Game> games) {
    return AddingResults(
      games,
    );
  }
}

/// @nodoc
const $ListState = _$ListStateTearOff();

/// @nodoc
mixin _$ListState {
  List<Game> get games => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Game> games) loading,
    required TResult Function(List<Game> games) results,
    required TResult Function(List<Game> games) addingResults,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Game> games)? loading,
    TResult Function(List<Game> games)? results,
    TResult Function(List<Game> games)? addingResults,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Results value) results,
    required TResult Function(AddingResults value) addingResults,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Results value)? results,
    TResult Function(AddingResults value)? addingResults,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListStateCopyWith<ListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListStateCopyWith<$Res> {
  factory $ListStateCopyWith(ListState value, $Res Function(ListState) then) =
      _$ListStateCopyWithImpl<$Res>;
  $Res call({List<Game> games});
}

/// @nodoc
class _$ListStateCopyWithImpl<$Res> implements $ListStateCopyWith<$Res> {
  _$ListStateCopyWithImpl(this._value, this._then);

  final ListState _value;
  // ignore: unused_field
  final $Res Function(ListState) _then;

  @override
  $Res call({
    Object? games = freezed,
  }) {
    return _then(_value.copyWith(
      games: games == freezed
          ? _value.games
          : games // ignore: cast_nullable_to_non_nullable
              as List<Game>,
    ));
  }
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> implements $ListStateCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({List<Game> games});
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$ListStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;

  @override
  $Res call({
    Object? games = freezed,
  }) {
    return _then(Loading(
      games == freezed
          ? _value.games
          : games // ignore: cast_nullable_to_non_nullable
              as List<Game>,
    ));
  }
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading(this.games);

  @override
  final List<Game> games;

  @override
  String toString() {
    return 'ListState.loading(games: $games)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loading &&
            (identical(other.games, games) ||
                const DeepCollectionEquality().equals(other.games, games)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(games);

  @JsonKey(ignore: true)
  @override
  $LoadingCopyWith<Loading> get copyWith =>
      _$LoadingCopyWithImpl<Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Game> games) loading,
    required TResult Function(List<Game> games) results,
    required TResult Function(List<Game> games) addingResults,
  }) {
    return loading(games);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Game> games)? loading,
    TResult Function(List<Game> games)? results,
    TResult Function(List<Game> games)? addingResults,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(games);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Results value) results,
    required TResult Function(AddingResults value) addingResults,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Results value)? results,
    TResult Function(AddingResults value)? addingResults,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements ListState {
  const factory Loading(List<Game> games) = _$Loading;

  @override
  List<Game> get games => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $LoadingCopyWith<Loading> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultsCopyWith<$Res> implements $ListStateCopyWith<$Res> {
  factory $ResultsCopyWith(Results value, $Res Function(Results) then) =
      _$ResultsCopyWithImpl<$Res>;
  @override
  $Res call({List<Game> games});
}

/// @nodoc
class _$ResultsCopyWithImpl<$Res> extends _$ListStateCopyWithImpl<$Res>
    implements $ResultsCopyWith<$Res> {
  _$ResultsCopyWithImpl(Results _value, $Res Function(Results) _then)
      : super(_value, (v) => _then(v as Results));

  @override
  Results get _value => super._value as Results;

  @override
  $Res call({
    Object? games = freezed,
  }) {
    return _then(Results(
      games == freezed
          ? _value.games
          : games // ignore: cast_nullable_to_non_nullable
              as List<Game>,
    ));
  }
}

/// @nodoc

class _$Results implements Results {
  const _$Results(this.games);

  @override
  final List<Game> games;

  @override
  String toString() {
    return 'ListState.results(games: $games)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Results &&
            (identical(other.games, games) ||
                const DeepCollectionEquality().equals(other.games, games)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(games);

  @JsonKey(ignore: true)
  @override
  $ResultsCopyWith<Results> get copyWith =>
      _$ResultsCopyWithImpl<Results>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Game> games) loading,
    required TResult Function(List<Game> games) results,
    required TResult Function(List<Game> games) addingResults,
  }) {
    return results(games);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Game> games)? loading,
    TResult Function(List<Game> games)? results,
    TResult Function(List<Game> games)? addingResults,
    required TResult orElse(),
  }) {
    if (results != null) {
      return results(games);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Results value) results,
    required TResult Function(AddingResults value) addingResults,
  }) {
    return results(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Results value)? results,
    TResult Function(AddingResults value)? addingResults,
    required TResult orElse(),
  }) {
    if (results != null) {
      return results(this);
    }
    return orElse();
  }
}

abstract class Results implements ListState {
  const factory Results(List<Game> games) = _$Results;

  @override
  List<Game> get games => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ResultsCopyWith<Results> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddingResultsCopyWith<$Res>
    implements $ListStateCopyWith<$Res> {
  factory $AddingResultsCopyWith(
          AddingResults value, $Res Function(AddingResults) then) =
      _$AddingResultsCopyWithImpl<$Res>;
  @override
  $Res call({List<Game> games});
}

/// @nodoc
class _$AddingResultsCopyWithImpl<$Res> extends _$ListStateCopyWithImpl<$Res>
    implements $AddingResultsCopyWith<$Res> {
  _$AddingResultsCopyWithImpl(
      AddingResults _value, $Res Function(AddingResults) _then)
      : super(_value, (v) => _then(v as AddingResults));

  @override
  AddingResults get _value => super._value as AddingResults;

  @override
  $Res call({
    Object? games = freezed,
  }) {
    return _then(AddingResults(
      games == freezed
          ? _value.games
          : games // ignore: cast_nullable_to_non_nullable
              as List<Game>,
    ));
  }
}

/// @nodoc

class _$AddingResults implements AddingResults {
  const _$AddingResults(this.games);

  @override
  final List<Game> games;

  @override
  String toString() {
    return 'ListState.addingResults(games: $games)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddingResults &&
            (identical(other.games, games) ||
                const DeepCollectionEquality().equals(other.games, games)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(games);

  @JsonKey(ignore: true)
  @override
  $AddingResultsCopyWith<AddingResults> get copyWith =>
      _$AddingResultsCopyWithImpl<AddingResults>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Game> games) loading,
    required TResult Function(List<Game> games) results,
    required TResult Function(List<Game> games) addingResults,
  }) {
    return addingResults(games);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Game> games)? loading,
    TResult Function(List<Game> games)? results,
    TResult Function(List<Game> games)? addingResults,
    required TResult orElse(),
  }) {
    if (addingResults != null) {
      return addingResults(games);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Results value) results,
    required TResult Function(AddingResults value) addingResults,
  }) {
    return addingResults(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Results value)? results,
    TResult Function(AddingResults value)? addingResults,
    required TResult orElse(),
  }) {
    if (addingResults != null) {
      return addingResults(this);
    }
    return orElse();
  }
}

abstract class AddingResults implements ListState {
  const factory AddingResults(List<Game> games) = _$AddingResults;

  @override
  List<Game> get games => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $AddingResultsCopyWith<AddingResults> get copyWith =>
      throw _privateConstructorUsedError;
}
