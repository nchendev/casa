// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'roommate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RoommateTearOff {
  const _$RoommateTearOff();

  _Roommate call(
      {@required UniqueId id,
      @required RoommateUserName username,
      @required RoommateNickName nickname}) {
    return _Roommate(
      id: id,
      username: username,
      nickname: nickname,
    );
  }
}

// ignore: unused_element
const $Roommate = _$RoommateTearOff();

mixin _$Roommate {
  UniqueId get id;
  RoommateUserName get username;
  RoommateNickName get nickname;

  $RoommateCopyWith<Roommate> get copyWith;
}

abstract class $RoommateCopyWith<$Res> {
  factory $RoommateCopyWith(Roommate value, $Res Function(Roommate) then) =
      _$RoommateCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id, RoommateUserName username, RoommateNickName nickname});
}

class _$RoommateCopyWithImpl<$Res> implements $RoommateCopyWith<$Res> {
  _$RoommateCopyWithImpl(this._value, this._then);

  final Roommate _value;
  // ignore: unused_field
  final $Res Function(Roommate) _then;

  @override
  $Res call({
    Object id = freezed,
    Object username = freezed,
    Object nickname = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      username:
          username == freezed ? _value.username : username as RoommateUserName,
      nickname:
          nickname == freezed ? _value.nickname : nickname as RoommateNickName,
    ));
  }
}

abstract class _$RoommateCopyWith<$Res> implements $RoommateCopyWith<$Res> {
  factory _$RoommateCopyWith(_Roommate value, $Res Function(_Roommate) then) =
      __$RoommateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id, RoommateUserName username, RoommateNickName nickname});
}

class __$RoommateCopyWithImpl<$Res> extends _$RoommateCopyWithImpl<$Res>
    implements _$RoommateCopyWith<$Res> {
  __$RoommateCopyWithImpl(_Roommate _value, $Res Function(_Roommate) _then)
      : super(_value, (v) => _then(v as _Roommate));

  @override
  _Roommate get _value => super._value as _Roommate;

  @override
  $Res call({
    Object id = freezed,
    Object username = freezed,
    Object nickname = freezed,
  }) {
    return _then(_Roommate(
      id: id == freezed ? _value.id : id as UniqueId,
      username:
          username == freezed ? _value.username : username as RoommateUserName,
      nickname:
          nickname == freezed ? _value.nickname : nickname as RoommateNickName,
    ));
  }
}

class _$_Roommate extends _Roommate {
  const _$_Roommate(
      {@required this.id, @required this.username, @required this.nickname})
      : assert(id != null),
        assert(username != null),
        assert(nickname != null),
        super._();

  @override
  final UniqueId id;
  @override
  final RoommateUserName username;
  @override
  final RoommateNickName nickname;

  @override
  String toString() {
    return 'Roommate(id: $id, username: $username, nickname: $nickname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Roommate &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.nickname, nickname) ||
                const DeepCollectionEquality()
                    .equals(other.nickname, nickname)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(nickname);

  @override
  _$RoommateCopyWith<_Roommate> get copyWith =>
      __$RoommateCopyWithImpl<_Roommate>(this, _$identity);
}

abstract class _Roommate extends Roommate {
  const _Roommate._() : super._();
  const factory _Roommate(
      {@required UniqueId id,
      @required RoommateUserName username,
      @required RoommateNickName nickname}) = _$_Roommate;

  @override
  UniqueId get id;
  @override
  RoommateUserName get username;
  @override
  RoommateNickName get nickname;
  @override
  _$RoommateCopyWith<_Roommate> get copyWith;
}
