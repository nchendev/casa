// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RoomTearOff {
  const _$RoomTearOff();

  _Room call(
      {@required UniqueId id,
      @required RoomName name,
      @required RoommateList<Roommate> roommates}) {
    return _Room(
      id: id,
      name: name,
      roommates: roommates,
    );
  }
}

// ignore: unused_element
const $Room = _$RoomTearOff();

mixin _$Room {
  UniqueId get id;
  RoomName get name;
  RoommateList<Roommate> get roommates;

  $RoomCopyWith<Room> get copyWith;
}

abstract class $RoomCopyWith<$Res> {
  factory $RoomCopyWith(Room value, $Res Function(Room) then) =
      _$RoomCopyWithImpl<$Res>;
  $Res call({UniqueId id, RoomName name, RoommateList<Roommate> roommates});
}

class _$RoomCopyWithImpl<$Res> implements $RoomCopyWith<$Res> {
  _$RoomCopyWithImpl(this._value, this._then);

  final Room _value;
  // ignore: unused_field
  final $Res Function(Room) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object roommates = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as RoomName,
      roommates: roommates == freezed
          ? _value.roommates
          : roommates as RoommateList<Roommate>,
    ));
  }
}

abstract class _$RoomCopyWith<$Res> implements $RoomCopyWith<$Res> {
  factory _$RoomCopyWith(_Room value, $Res Function(_Room) then) =
      __$RoomCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, RoomName name, RoommateList<Roommate> roommates});
}

class __$RoomCopyWithImpl<$Res> extends _$RoomCopyWithImpl<$Res>
    implements _$RoomCopyWith<$Res> {
  __$RoomCopyWithImpl(_Room _value, $Res Function(_Room) _then)
      : super(_value, (v) => _then(v as _Room));

  @override
  _Room get _value => super._value as _Room;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object roommates = freezed,
  }) {
    return _then(_Room(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as RoomName,
      roommates: roommates == freezed
          ? _value.roommates
          : roommates as RoommateList<Roommate>,
    ));
  }
}

class _$_Room extends _Room {
  const _$_Room(
      {@required this.id, @required this.name, @required this.roommates})
      : assert(id != null),
        assert(name != null),
        assert(roommates != null),
        super._();

  @override
  final UniqueId id;
  @override
  final RoomName name;
  @override
  final RoommateList<Roommate> roommates;

  @override
  String toString() {
    return 'Room(id: $id, name: $name, roommates: $roommates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Room &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.roommates, roommates) ||
                const DeepCollectionEquality()
                    .equals(other.roommates, roommates)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(roommates);

  @override
  _$RoomCopyWith<_Room> get copyWith =>
      __$RoomCopyWithImpl<_Room>(this, _$identity);
}

abstract class _Room extends Room {
  const _Room._() : super._();
  const factory _Room(
      {@required UniqueId id,
      @required RoomName name,
      @required RoommateList<Roommate> roommates}) = _$_Room;

  @override
  UniqueId get id;
  @override
  RoomName get name;
  @override
  RoommateList<Roommate> get roommates;
  @override
  _$RoomCopyWith<_Room> get copyWith;
}
