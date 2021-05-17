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

  Initial initial(List<Game> games, bool isButtonDisplayed) {
    return Initial(
      games,
      isButtonDisplayed,
    );
  }

  Searching searching(List<Game> games, bool isButtonDisplayed) {
    return Searching(
      games,
      isButtonDisplayed,
    );
  }

  Results results(List<Game> games, bool isButtonDisplayed) {
    return Results(
      games,
      isButtonDisplayed,
    );
  }

  LoadingNextPage loadingNextPage(List<Game> games, bool isButtonDisplayed) {
    return LoadingNextPage(
      games,
      isButtonDisplayed,
    );
  }

  AddingResults addingResults(List<Game> games, bool isButtonDisplayed) {
    return AddingResults(
      games,
      isButtonDisplayed,
    );
  }
}

/// @nodoc
const $SearchState = _$SearchStateTearOff();

/// @nodoc
mixin _$SearchState {
  List<Game> get games => throw _privateConstructorUsedError;
  bool get isButtonDisplayed => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Game> games, bool isButtonDisplayed) initial,
    required TResult Function(List<Game> games, bool isButtonDisplayed)
        searching,
    required TResult Function(List<Game> games, bool isButtonDisplayed) results,
    required TResult Function(List<Game> games, bool isButtonDisplayed)
        loadingNextPage,
    required TResult Function(List<Game> games, bool isButtonDisplayed)
        addingResults,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Game> games, bool isButtonDisplayed)? initial,
    TResult Function(List<Game> games, bool isButtonDisplayed)? searching,
    TResult Function(List<Game> games, bool isButtonDisplayed)? results,
    TResult Function(List<Game> games, bool isButtonDisplayed)? loadingNextPage,
    TResult Function(List<Game> games, bool isButtonDisplayed)? addingResults,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Searching value) searching,
    required TResult Function(Results value) results,
    required TResult Function(LoadingNextPage value) loadingNextPage,
    required TResult Function(AddingResults value) addingResults,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Searching value)? searching,
    TResult Function(Results value)? results,
    TResult Function(LoadingNextPage value)? loadingNextPage,
    TResult Function(AddingResults value)? addingResults,
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
  $Res call({List<Game> games, bool isButtonDisplayed});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;

  @override
  $Res call({
    Object? games = freezed,
    Object? isButtonDisplayed = freezed,
  }) {
    return _then(_value.copyWith(
      games: games == freezed
          ? _value.games
          : games // ignore: cast_nullable_to_non_nullable
              as List<Game>,
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
  $Res call({List<Game> games, bool isButtonDisplayed});
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
    Object? games = freezed,
    Object? isButtonDisplayed = freezed,
  }) {
    return _then(Initial(
      games == freezed
          ? _value.games
          : games // ignore: cast_nullable_to_non_nullable
              as List<Game>,
      isButtonDisplayed == freezed
          ? _value.isButtonDisplayed
          : isButtonDisplayed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial(this.games, this.isButtonDisplayed);

  @override
  final List<Game> games;
  @override
  final bool isButtonDisplayed;

  @override
  String toString() {
    return 'SearchState.initial(games: $games, isButtonDisplayed: $isButtonDisplayed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Initial &&
            (identical(other.games, games) ||
                const DeepCollectionEquality().equals(other.games, games)) &&
            (identical(other.isButtonDisplayed, isButtonDisplayed) ||
                const DeepCollectionEquality()
                    .equals(other.isButtonDisplayed, isButtonDisplayed)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(games) ^
      const DeepCollectionEquality().hash(isButtonDisplayed);

  @JsonKey(ignore: true)
  @override
  $InitialCopyWith<Initial> get copyWith =>
      _$InitialCopyWithImpl<Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Game> games, bool isButtonDisplayed) initial,
    required TResult Function(List<Game> games, bool isButtonDisplayed)
        searching,
    required TResult Function(List<Game> games, bool isButtonDisplayed) results,
    required TResult Function(List<Game> games, bool isButtonDisplayed)
        loadingNextPage,
    required TResult Function(List<Game> games, bool isButtonDisplayed)
        addingResults,
  }) {
    return initial(games, isButtonDisplayed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Game> games, bool isButtonDisplayed)? initial,
    TResult Function(List<Game> games, bool isButtonDisplayed)? searching,
    TResult Function(List<Game> games, bool isButtonDisplayed)? results,
    TResult Function(List<Game> games, bool isButtonDisplayed)? loadingNextPage,
    TResult Function(List<Game> games, bool isButtonDisplayed)? addingResults,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(games, isButtonDisplayed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Searching value) searching,
    required TResult Function(Results value) results,
    required TResult Function(LoadingNextPage value) loadingNextPage,
    required TResult Function(AddingResults value) addingResults,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Searching value)? searching,
    TResult Function(Results value)? results,
    TResult Function(LoadingNextPage value)? loadingNextPage,
    TResult Function(AddingResults value)? addingResults,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SearchState {
  const factory Initial(List<Game> games, bool isButtonDisplayed) = _$Initial;

  @override
  List<Game> get games => throw _privateConstructorUsedError;
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
  $Res call({List<Game> games, bool isButtonDisplayed});
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
    Object? games = freezed,
    Object? isButtonDisplayed = freezed,
  }) {
    return _then(Searching(
      games == freezed
          ? _value.games
          : games // ignore: cast_nullable_to_non_nullable
              as List<Game>,
      isButtonDisplayed == freezed
          ? _value.isButtonDisplayed
          : isButtonDisplayed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$Searching implements Searching {
  const _$Searching(this.games, this.isButtonDisplayed);

  @override
  final List<Game> games;
  @override
  final bool isButtonDisplayed;

  @override
  String toString() {
    return 'SearchState.searching(games: $games, isButtonDisplayed: $isButtonDisplayed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Searching &&
            (identical(other.games, games) ||
                const DeepCollectionEquality().equals(other.games, games)) &&
            (identical(other.isButtonDisplayed, isButtonDisplayed) ||
                const DeepCollectionEquality()
                    .equals(other.isButtonDisplayed, isButtonDisplayed)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(games) ^
      const DeepCollectionEquality().hash(isButtonDisplayed);

  @JsonKey(ignore: true)
  @override
  $SearchingCopyWith<Searching> get copyWith =>
      _$SearchingCopyWithImpl<Searching>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Game> games, bool isButtonDisplayed) initial,
    required TResult Function(List<Game> games, bool isButtonDisplayed)
        searching,
    required TResult Function(List<Game> games, bool isButtonDisplayed) results,
    required TResult Function(List<Game> games, bool isButtonDisplayed)
        loadingNextPage,
    required TResult Function(List<Game> games, bool isButtonDisplayed)
        addingResults,
  }) {
    return searching(games, isButtonDisplayed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Game> games, bool isButtonDisplayed)? initial,
    TResult Function(List<Game> games, bool isButtonDisplayed)? searching,
    TResult Function(List<Game> games, bool isButtonDisplayed)? results,
    TResult Function(List<Game> games, bool isButtonDisplayed)? loadingNextPage,
    TResult Function(List<Game> games, bool isButtonDisplayed)? addingResults,
    required TResult orElse(),
  }) {
    if (searching != null) {
      return searching(games, isButtonDisplayed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Searching value) searching,
    required TResult Function(Results value) results,
    required TResult Function(LoadingNextPage value) loadingNextPage,
    required TResult Function(AddingResults value) addingResults,
  }) {
    return searching(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Searching value)? searching,
    TResult Function(Results value)? results,
    TResult Function(LoadingNextPage value)? loadingNextPage,
    TResult Function(AddingResults value)? addingResults,
    required TResult orElse(),
  }) {
    if (searching != null) {
      return searching(this);
    }
    return orElse();
  }
}

abstract class Searching implements SearchState {
  const factory Searching(List<Game> games, bool isButtonDisplayed) =
      _$Searching;

  @override
  List<Game> get games => throw _privateConstructorUsedError;
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
  $Res call({List<Game> games, bool isButtonDisplayed});
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
    Object? isButtonDisplayed = freezed,
  }) {
    return _then(Results(
      games == freezed
          ? _value.games
          : games // ignore: cast_nullable_to_non_nullable
              as List<Game>,
      isButtonDisplayed == freezed
          ? _value.isButtonDisplayed
          : isButtonDisplayed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$Results implements Results {
  const _$Results(this.games, this.isButtonDisplayed);

  @override
  final List<Game> games;
  @override
  final bool isButtonDisplayed;

  @override
  String toString() {
    return 'SearchState.results(games: $games, isButtonDisplayed: $isButtonDisplayed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Results &&
            (identical(other.games, games) ||
                const DeepCollectionEquality().equals(other.games, games)) &&
            (identical(other.isButtonDisplayed, isButtonDisplayed) ||
                const DeepCollectionEquality()
                    .equals(other.isButtonDisplayed, isButtonDisplayed)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(games) ^
      const DeepCollectionEquality().hash(isButtonDisplayed);

  @JsonKey(ignore: true)
  @override
  $ResultsCopyWith<Results> get copyWith =>
      _$ResultsCopyWithImpl<Results>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Game> games, bool isButtonDisplayed) initial,
    required TResult Function(List<Game> games, bool isButtonDisplayed)
        searching,
    required TResult Function(List<Game> games, bool isButtonDisplayed) results,
    required TResult Function(List<Game> games, bool isButtonDisplayed)
        loadingNextPage,
    required TResult Function(List<Game> games, bool isButtonDisplayed)
        addingResults,
  }) {
    return results(games, isButtonDisplayed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Game> games, bool isButtonDisplayed)? initial,
    TResult Function(List<Game> games, bool isButtonDisplayed)? searching,
    TResult Function(List<Game> games, bool isButtonDisplayed)? results,
    TResult Function(List<Game> games, bool isButtonDisplayed)? loadingNextPage,
    TResult Function(List<Game> games, bool isButtonDisplayed)? addingResults,
    required TResult orElse(),
  }) {
    if (results != null) {
      return results(games, isButtonDisplayed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Searching value) searching,
    required TResult Function(Results value) results,
    required TResult Function(LoadingNextPage value) loadingNextPage,
    required TResult Function(AddingResults value) addingResults,
  }) {
    return results(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Searching value)? searching,
    TResult Function(Results value)? results,
    TResult Function(LoadingNextPage value)? loadingNextPage,
    TResult Function(AddingResults value)? addingResults,
    required TResult orElse(),
  }) {
    if (results != null) {
      return results(this);
    }
    return orElse();
  }
}

abstract class Results implements SearchState {
  const factory Results(List<Game> games, bool isButtonDisplayed) = _$Results;

  @override
  List<Game> get games => throw _privateConstructorUsedError;
  @override
  bool get isButtonDisplayed => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ResultsCopyWith<Results> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingNextPageCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory $LoadingNextPageCopyWith(
          LoadingNextPage value, $Res Function(LoadingNextPage) then) =
      _$LoadingNextPageCopyWithImpl<$Res>;
  @override
  $Res call({List<Game> games, bool isButtonDisplayed});
}

/// @nodoc
class _$LoadingNextPageCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements $LoadingNextPageCopyWith<$Res> {
  _$LoadingNextPageCopyWithImpl(
      LoadingNextPage _value, $Res Function(LoadingNextPage) _then)
      : super(_value, (v) => _then(v as LoadingNextPage));

  @override
  LoadingNextPage get _value => super._value as LoadingNextPage;

  @override
  $Res call({
    Object? games = freezed,
    Object? isButtonDisplayed = freezed,
  }) {
    return _then(LoadingNextPage(
      games == freezed
          ? _value.games
          : games // ignore: cast_nullable_to_non_nullable
              as List<Game>,
      isButtonDisplayed == freezed
          ? _value.isButtonDisplayed
          : isButtonDisplayed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadingNextPage implements LoadingNextPage {
  const _$LoadingNextPage(this.games, this.isButtonDisplayed);

  @override
  final List<Game> games;
  @override
  final bool isButtonDisplayed;

  @override
  String toString() {
    return 'SearchState.loadingNextPage(games: $games, isButtonDisplayed: $isButtonDisplayed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadingNextPage &&
            (identical(other.games, games) ||
                const DeepCollectionEquality().equals(other.games, games)) &&
            (identical(other.isButtonDisplayed, isButtonDisplayed) ||
                const DeepCollectionEquality()
                    .equals(other.isButtonDisplayed, isButtonDisplayed)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(games) ^
      const DeepCollectionEquality().hash(isButtonDisplayed);

  @JsonKey(ignore: true)
  @override
  $LoadingNextPageCopyWith<LoadingNextPage> get copyWith =>
      _$LoadingNextPageCopyWithImpl<LoadingNextPage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Game> games, bool isButtonDisplayed) initial,
    required TResult Function(List<Game> games, bool isButtonDisplayed)
        searching,
    required TResult Function(List<Game> games, bool isButtonDisplayed) results,
    required TResult Function(List<Game> games, bool isButtonDisplayed)
        loadingNextPage,
    required TResult Function(List<Game> games, bool isButtonDisplayed)
        addingResults,
  }) {
    return loadingNextPage(games, isButtonDisplayed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Game> games, bool isButtonDisplayed)? initial,
    TResult Function(List<Game> games, bool isButtonDisplayed)? searching,
    TResult Function(List<Game> games, bool isButtonDisplayed)? results,
    TResult Function(List<Game> games, bool isButtonDisplayed)? loadingNextPage,
    TResult Function(List<Game> games, bool isButtonDisplayed)? addingResults,
    required TResult orElse(),
  }) {
    if (loadingNextPage != null) {
      return loadingNextPage(games, isButtonDisplayed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Searching value) searching,
    required TResult Function(Results value) results,
    required TResult Function(LoadingNextPage value) loadingNextPage,
    required TResult Function(AddingResults value) addingResults,
  }) {
    return loadingNextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Searching value)? searching,
    TResult Function(Results value)? results,
    TResult Function(LoadingNextPage value)? loadingNextPage,
    TResult Function(AddingResults value)? addingResults,
    required TResult orElse(),
  }) {
    if (loadingNextPage != null) {
      return loadingNextPage(this);
    }
    return orElse();
  }
}

abstract class LoadingNextPage implements SearchState {
  const factory LoadingNextPage(List<Game> games, bool isButtonDisplayed) =
      _$LoadingNextPage;

  @override
  List<Game> get games => throw _privateConstructorUsedError;
  @override
  bool get isButtonDisplayed => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $LoadingNextPageCopyWith<LoadingNextPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddingResultsCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory $AddingResultsCopyWith(
          AddingResults value, $Res Function(AddingResults) then) =
      _$AddingResultsCopyWithImpl<$Res>;
  @override
  $Res call({List<Game> games, bool isButtonDisplayed});
}

/// @nodoc
class _$AddingResultsCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements $AddingResultsCopyWith<$Res> {
  _$AddingResultsCopyWithImpl(
      AddingResults _value, $Res Function(AddingResults) _then)
      : super(_value, (v) => _then(v as AddingResults));

  @override
  AddingResults get _value => super._value as AddingResults;

  @override
  $Res call({
    Object? games = freezed,
    Object? isButtonDisplayed = freezed,
  }) {
    return _then(AddingResults(
      games == freezed
          ? _value.games
          : games // ignore: cast_nullable_to_non_nullable
              as List<Game>,
      isButtonDisplayed == freezed
          ? _value.isButtonDisplayed
          : isButtonDisplayed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AddingResults implements AddingResults {
  const _$AddingResults(this.games, this.isButtonDisplayed);

  @override
  final List<Game> games;
  @override
  final bool isButtonDisplayed;

  @override
  String toString() {
    return 'SearchState.addingResults(games: $games, isButtonDisplayed: $isButtonDisplayed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddingResults &&
            (identical(other.games, games) ||
                const DeepCollectionEquality().equals(other.games, games)) &&
            (identical(other.isButtonDisplayed, isButtonDisplayed) ||
                const DeepCollectionEquality()
                    .equals(other.isButtonDisplayed, isButtonDisplayed)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(games) ^
      const DeepCollectionEquality().hash(isButtonDisplayed);

  @JsonKey(ignore: true)
  @override
  $AddingResultsCopyWith<AddingResults> get copyWith =>
      _$AddingResultsCopyWithImpl<AddingResults>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Game> games, bool isButtonDisplayed) initial,
    required TResult Function(List<Game> games, bool isButtonDisplayed)
        searching,
    required TResult Function(List<Game> games, bool isButtonDisplayed) results,
    required TResult Function(List<Game> games, bool isButtonDisplayed)
        loadingNextPage,
    required TResult Function(List<Game> games, bool isButtonDisplayed)
        addingResults,
  }) {
    return addingResults(games, isButtonDisplayed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Game> games, bool isButtonDisplayed)? initial,
    TResult Function(List<Game> games, bool isButtonDisplayed)? searching,
    TResult Function(List<Game> games, bool isButtonDisplayed)? results,
    TResult Function(List<Game> games, bool isButtonDisplayed)? loadingNextPage,
    TResult Function(List<Game> games, bool isButtonDisplayed)? addingResults,
    required TResult orElse(),
  }) {
    if (addingResults != null) {
      return addingResults(games, isButtonDisplayed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Searching value) searching,
    required TResult Function(Results value) results,
    required TResult Function(LoadingNextPage value) loadingNextPage,
    required TResult Function(AddingResults value) addingResults,
  }) {
    return addingResults(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Searching value)? searching,
    TResult Function(Results value)? results,
    TResult Function(LoadingNextPage value)? loadingNextPage,
    TResult Function(AddingResults value)? addingResults,
    required TResult orElse(),
  }) {
    if (addingResults != null) {
      return addingResults(this);
    }
    return orElse();
  }
}

abstract class AddingResults implements SearchState {
  const factory AddingResults(List<Game> games, bool isButtonDisplayed) =
      _$AddingResults;

  @override
  List<Game> get games => throw _privateConstructorUsedError;
  @override
  bool get isButtonDisplayed => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $AddingResultsCopyWith<AddingResults> get copyWith =>
      throw _privateConstructorUsedError;
}
