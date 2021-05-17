// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  Games games() {
    return const Games();
  }

  Search search() {
    return const Search();
  }

  Profile profile() {
    return const Profile();
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() games,
    required TResult Function() search,
    required TResult Function() profile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? games,
    TResult Function()? search,
    TResult Function()? profile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Games value) games,
    required TResult Function(Search value) search,
    required TResult Function(Profile value) profile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Games value)? games,
    TResult Function(Search value)? search,
    TResult Function(Profile value)? profile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class $GamesCopyWith<$Res> {
  factory $GamesCopyWith(Games value, $Res Function(Games) then) =
      _$GamesCopyWithImpl<$Res>;
}

/// @nodoc
class _$GamesCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $GamesCopyWith<$Res> {
  _$GamesCopyWithImpl(Games _value, $Res Function(Games) _then)
      : super(_value, (v) => _then(v as Games));

  @override
  Games get _value => super._value as Games;
}

/// @nodoc

class _$Games implements Games {
  const _$Games();

  @override
  String toString() {
    return 'HomeState.games()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Games);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() games,
    required TResult Function() search,
    required TResult Function() profile,
  }) {
    return games();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? games,
    TResult Function()? search,
    TResult Function()? profile,
    required TResult orElse(),
  }) {
    if (games != null) {
      return games();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Games value) games,
    required TResult Function(Search value) search,
    required TResult Function(Profile value) profile,
  }) {
    return games(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Games value)? games,
    TResult Function(Search value)? search,
    TResult Function(Profile value)? profile,
    required TResult orElse(),
  }) {
    if (games != null) {
      return games(this);
    }
    return orElse();
  }
}

abstract class Games implements HomeState {
  const factory Games() = _$Games;
}

/// @nodoc
abstract class $SearchCopyWith<$Res> {
  factory $SearchCopyWith(Search value, $Res Function(Search) then) =
      _$SearchCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $SearchCopyWith<$Res> {
  _$SearchCopyWithImpl(Search _value, $Res Function(Search) _then)
      : super(_value, (v) => _then(v as Search));

  @override
  Search get _value => super._value as Search;
}

/// @nodoc

class _$Search implements Search {
  const _$Search();

  @override
  String toString() {
    return 'HomeState.search()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Search);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() games,
    required TResult Function() search,
    required TResult Function() profile,
  }) {
    return search();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? games,
    TResult Function()? search,
    TResult Function()? profile,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Games value) games,
    required TResult Function(Search value) search,
    required TResult Function(Profile value) profile,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Games value)? games,
    TResult Function(Search value)? search,
    TResult Function(Profile value)? profile,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class Search implements HomeState {
  const factory Search() = _$Search;
}

/// @nodoc
abstract class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) then) =
      _$ProfileCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(Profile _value, $Res Function(Profile) _then)
      : super(_value, (v) => _then(v as Profile));

  @override
  Profile get _value => super._value as Profile;
}

/// @nodoc

class _$Profile implements Profile {
  const _$Profile();

  @override
  String toString() {
    return 'HomeState.profile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Profile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() games,
    required TResult Function() search,
    required TResult Function() profile,
  }) {
    return profile();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? games,
    TResult Function()? search,
    TResult Function()? profile,
    required TResult orElse(),
  }) {
    if (profile != null) {
      return profile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Games value) games,
    required TResult Function(Search value) search,
    required TResult Function(Profile value) profile,
  }) {
    return profile(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Games value)? games,
    TResult Function(Search value)? search,
    TResult Function(Profile value)? profile,
    required TResult orElse(),
  }) {
    if (profile != null) {
      return profile(this);
    }
    return orElse();
  }
}

abstract class Profile implements HomeState {
  const factory Profile() = _$Profile;
}
