// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'search_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchStateTearOff {
  const _$SearchStateTearOff();

  Initial initial(bool isButtonDisplayed) {
    return Initial(
      isButtonDisplayed,
    );
  }

  Searching searching(bool isButtonDisplayed) {
    return Searching(
      isButtonDisplayed,
    );
  }

  Results results(List<Game> games, bool isNewAdded, bool isLoadingNext,
      bool isButtonDisplayed) {
    return Results(
      games,
      isNewAdded,
      isLoadingNext,
      isButtonDisplayed,
    );
  }
}

/// @nodoc
const $SearchState = _$SearchStateTearOff();

/// @nodoc
mixin _$SearchState {
  bool get isButtonDisplayed => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isButtonDisplayed) initial,
    required TResult Function(bool isButtonDisplayed) searching,
    required TResult Function(List<Game> games, bool isNewAdded,
            bool isLoadingNext, bool isButtonDisplayed)
        results,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isButtonDisplayed)? initial,
    TResult Function(bool isButtonDisplayed)? searching,
    TResult Function(List<Game> games, bool isNewAdded, bool isLoadingNext,
            bool isButtonDisplayed)?
        results,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Searching value) searching,
    required TResult Function(Results value) results,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Searching value)? searching,
    TResult Function(Results value)? results,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
  $Res call({bool isButtonDisplayed});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;

  @override
  $Res call({
    Object? isButtonDisplayed = freezed,
  }) {
    return _then(_value.copyWith(
      isButtonDisplayed: isButtonDisplayed == freezed
          ? _value.isButtonDisplayed
          : isButtonDisplayed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class $InitialCopyWith<$Res> implements $SearchStateCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  @override
  $Res call({bool isButtonDisplayed});
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;

  @override
  $Res call({
    Object? isButtonDisplayed = freezed,
  }) {
    return _then(Initial(
      isButtonDisplayed == freezed
          ? _value.isButtonDisplayed
          : isButtonDisplayed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial(this.isButtonDisplayed);

  @override
  final bool isButtonDisplayed;

  @override
  String toString() {
    return 'SearchState.initial(isButtonDisplayed: $isButtonDisplayed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Initial &&
            (identical(other.isButtonDisplayed, isButtonDisplayed) ||
                const DeepCollectionEquality()
                    .equals(other.isButtonDisplayed, isButtonDisplayed)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isButtonDisplayed);

  @JsonKey(ignore: true)
  @override
  $InitialCopyWith<Initial> get copyWith =>
      _$InitialCopyWithImpl<Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isButtonDisplayed) initial,
    required TResult Function(bool isButtonDisplayed) searching,
    required TResult Function(List<Game> games, bool isNewAdded,
            bool isLoadingNext, bool isButtonDisplayed)
        results,
  }) {
    return initial(isButtonDisplayed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isButtonDisplayed)? initial,
    TResult Function(bool isButtonDisplayed)? searching,
    TResult Function(List<Game> games, bool isNewAdded, bool isLoadingNext,
            bool isButtonDisplayed)?
        results,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(isButtonDisplayed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Searching value) searching,
    required TResult Function(Results value) results,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Searching value)? searching,
    TResult Function(Results value)? results,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SearchState {
  const factory Initial(bool isButtonDisplayed) = _$Initial;

  @override
  bool get isButtonDisplayed => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InitialCopyWith<Initial> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchingCopyWith<$Res> implements $SearchStateCopyWith<$Res> {
  factory $SearchingCopyWith(Searching value, $Res Function(Searching) then) =
      _$SearchingCopyWithImpl<$Res>;
  @override
  $Res call({bool isButtonDisplayed});
}

/// @nodoc
class _$SearchingCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements $SearchingCopyWith<$Res> {
  _$SearchingCopyWithImpl(Searching _value, $Res Function(Searching) _then)
      : super(_value, (v) => _then(v as Searching));

  @override
  Searching get _value => super._value as Searching;

  @override
  $Res call({
    Object? isButtonDisplayed = freezed,
  }) {
    return _then(Searching(
      isButtonDisplayed == freezed
          ? _value.isButtonDisplayed
          : isButtonDisplayed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$Searching implements Searching {
  const _$Searching(this.isButtonDisplayed);

  @override
  final bool isButtonDisplayed;

  @override
  String toString() {
    return 'SearchState.searching(isButtonDisplayed: $isButtonDisplayed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Searching &&
            (identical(other.isButtonDisplayed, isButtonDisplayed) ||
                const DeepCollectionEquality()
                    .equals(other.isButtonDisplayed, isButtonDisplayed)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isButtonDisplayed);

  @JsonKey(ignore: true)
  @override
  $SearchingCopyWith<Searching> get copyWith =>
      _$SearchingCopyWithImpl<Searching>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isButtonDisplayed) initial,
    required TResult Function(bool isButtonDisplayed) searching,
    required TResult Function(List<Game> games, bool isNewAdded,
            bool isLoadingNext, bool isButtonDisplayed)
        results,
  }) {
    return searching(isButtonDisplayed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isButtonDisplayed)? initial,
    TResult Function(bool isButtonDisplayed)? searching,
    TResult Function(List<Game> games, bool isNewAdded, bool isLoadingNext,
            bool isButtonDisplayed)?
        results,
    required TResult orElse(),
  }) {
    if (searching != null) {
      return searching(isButtonDisplayed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Searching value) searching,
    required TResult Function(Results value) results,
  }) {
    return searching(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Searching value)? searching,
    TResult Function(Results value)? results,
    required TResult orElse(),
  }) {
    if (searching != null) {
      return searching(this);
    }
    return orElse();
  }
}

abstract class Searching implements SearchState {
  const factory Searching(bool isButtonDisplayed) = _$Searching;

  @override
  bool get isButtonDisplayed => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SearchingCopyWith<Searching> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultsCopyWith<$Res> implements $SearchStateCopyWith<$Res> {
  factory $ResultsCopyWith(Results value, $Res Function(Results) then) =
      _$ResultsCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Game> games,
      bool isNewAdded,
      bool isLoadingNext,
      bool isButtonDisplayed});
}

/// @nodoc
class _$ResultsCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements $ResultsCopyWith<$Res> {
  _$ResultsCopyWithImpl(Results _value, $Res Function(Results) _then)
      : super(_value, (v) => _then(v as Results));

  @override
  Results get _value => super._value as Results;

  @override
  $Res call({
    Object? games = freezed,
    Object? isNewAdded = freezed,
    Object? isLoadingNext = freezed,
    Object? isButtonDisplayed = freezed,
  }) {
    return _then(Results(
      games == freezed
          ? _value.games
          : games // ignore: cast_nullable_to_non_nullable
              as List<Game>,
      isNewAdded == freezed
          ? _value.isNewAdded
          : isNewAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingNext == freezed
          ? _value.isLoadingNext
          : isLoadingNext // ignore: cast_nullable_to_non_nullable
              as bool,
      isButtonDisplayed == freezed
          ? _value.isButtonDisplayed
          : isButtonDisplayed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$Results implements Results {
  const _$Results(
      this.games, this.isNewAdded, this.isLoadingNext, this.isButtonDisplayed);

  @override
  final List<Game> games;
  @override
  final bool isNewAdded;
  @override
  final bool isLoadingNext;
  @override
  final bool isButtonDisplayed;

  @override
  String toString() {
    return 'SearchState.results(games: $games, isNewAdded: $isNewAdded, isLoadingNext: $isLoadingNext, isButtonDisplayed: $isButtonDisplayed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Results &&
            (identical(other.games, games) ||
                const DeepCollectionEquality().equals(other.games, games)) &&
            (identical(other.isNewAdded, isNewAdded) ||
                const DeepCollectionEquality()
                    .equals(other.isNewAdded, isNewAdded)) &&
            (identical(other.isLoadingNext, isLoadingNext) ||
                const DeepCollectionEquality()
                    .equals(other.isLoadingNext, isLoadingNext)) &&
            (identical(other.isButtonDisplayed, isButtonDisplayed) ||
                const DeepCollectionEquality()
                    .equals(other.isButtonDisplayed, isButtonDisplayed)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(games) ^
      const DeepCollectionEquality().hash(isNewAdded) ^
      const DeepCollectionEquality().hash(isLoadingNext) ^
      const DeepCollectionEquality().hash(isButtonDisplayed);

  @JsonKey(ignore: true)
  @override
  $ResultsCopyWith<Results> get copyWith =>
      _$ResultsCopyWithImpl<Results>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isButtonDisplayed) initial,
    required TResult Function(bool isButtonDisplayed) searching,
    required TResult Function(List<Game> games, bool isNewAdded,
            bool isLoadingNext, bool isButtonDisplayed)
        results,
  }) {
    return results(games, isNewAdded, isLoadingNext, isButtonDisplayed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isButtonDisplayed)? initial,
    TResult Function(bool isButtonDisplayed)? searching,
    TResult Function(List<Game> games, bool isNewAdded, bool isLoadingNext,
            bool isButtonDisplayed)?
        results,
    required TResult orElse(),
  }) {
    if (results != null) {
      return results(games, isNewAdded, isLoadingNext, isButtonDisplayed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Searching value) searching,
    required TResult Function(Results value) results,
  }) {
    return results(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Searching value)? searching,
    TResult Function(Results value)? results,
    required TResult orElse(),
  }) {
    if (results != null) {
      return results(this);
    }
    return orElse();
  }
}

abstract class Results implements SearchState {
  const factory Results(List<Game> games, bool isNewAdded, bool isLoadingNext,
      bool isButtonDisplayed) = _$Results;

  List<Game> get games => throw _privateConstructorUsedError;
  bool get isNewAdded => throw _privateConstructorUsedError;
  bool get isLoadingNext => throw _privateConstructorUsedError;
  @override
  bool get isButtonDisplayed => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ResultsCopyWith<Results> get copyWith => throw _privateConstructorUsedError;
}
