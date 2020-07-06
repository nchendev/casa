// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'room_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RoomActorEventTearOff {
  const _$RoomActorEventTearOff();

  _JoinedRoom joinedRoom(Room room) {
    return _JoinedRoom(
      room,
    );
  }

  _LeftRoom leftRoom(Room room) {
    return _LeftRoom(
      room,
    );
  }

  _AddedRoommate addedRoommate(Roommate roommate) {
    return _AddedRoommate(
      roommate,
    );
  }

  _RemovedRoommate removedRoommate(Roommate roommate) {
    return _RemovedRoommate(
      roommate,
    );
  }
}

// ignore: unused_element
const $RoomActorEvent = _$RoomActorEventTearOff();

mixin _$RoomActorEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result joinedRoom(Room room),
    @required Result leftRoom(Room room),
    @required Result addedRoommate(Roommate roommate),
    @required Result removedRoommate(Roommate roommate),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result joinedRoom(Room room),
    Result leftRoom(Room room),
    Result addedRoommate(Roommate roommate),
    Result removedRoommate(Roommate roommate),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result joinedRoom(_JoinedRoom value),
    @required Result leftRoom(_LeftRoom value),
    @required Result addedRoommate(_AddedRoommate value),
    @required Result removedRoommate(_RemovedRoommate value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result joinedRoom(_JoinedRoom value),
    Result leftRoom(_LeftRoom value),
    Result addedRoommate(_AddedRoommate value),
    Result removedRoommate(_RemovedRoommate value),
    @required Result orElse(),
  });
}

abstract class $RoomActorEventCopyWith<$Res> {
  factory $RoomActorEventCopyWith(
          RoomActorEvent value, $Res Function(RoomActorEvent) then) =
      _$RoomActorEventCopyWithImpl<$Res>;
}

class _$RoomActorEventCopyWithImpl<$Res>
    implements $RoomActorEventCopyWith<$Res> {
  _$RoomActorEventCopyWithImpl(this._value, this._then);

  final RoomActorEvent _value;
  // ignore: unused_field
  final $Res Function(RoomActorEvent) _then;
}

abstract class _$JoinedRoomCopyWith<$Res> {
  factory _$JoinedRoomCopyWith(
          _JoinedRoom value, $Res Function(_JoinedRoom) then) =
      __$JoinedRoomCopyWithImpl<$Res>;
  $Res call({Room room});

  $RoomCopyWith<$Res> get room;
}

class __$JoinedRoomCopyWithImpl<$Res> extends _$RoomActorEventCopyWithImpl<$Res>
    implements _$JoinedRoomCopyWith<$Res> {
  __$JoinedRoomCopyWithImpl(
      _JoinedRoom _value, $Res Function(_JoinedRoom) _then)
      : super(_value, (v) => _then(v as _JoinedRoom));

  @override
  _JoinedRoom get _value => super._value as _JoinedRoom;

  @override
  $Res call({
    Object room = freezed,
  }) {
    return _then(_JoinedRoom(
      room == freezed ? _value.room : room as Room,
    ));
  }

  @override
  $RoomCopyWith<$Res> get room {
    if (_value.room == null) {
      return null;
    }
    return $RoomCopyWith<$Res>(_value.room, (value) {
      return _then(_value.copyWith(room: value));
    });
  }
}

class _$_JoinedRoom implements _JoinedRoom {
  const _$_JoinedRoom(this.room) : assert(room != null);

  @override
  final Room room;

  @override
  String toString() {
    return 'RoomActorEvent.joinedRoom(room: $room)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JoinedRoom &&
            (identical(other.room, room) ||
                const DeepCollectionEquality().equals(other.room, room)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(room);

  @override
  _$JoinedRoomCopyWith<_JoinedRoom> get copyWith =>
      __$JoinedRoomCopyWithImpl<_JoinedRoom>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result joinedRoom(Room room),
    @required Result leftRoom(Room room),
    @required Result addedRoommate(Roommate roommate),
    @required Result removedRoommate(Roommate roommate),
  }) {
    assert(joinedRoom != null);
    assert(leftRoom != null);
    assert(addedRoommate != null);
    assert(removedRoommate != null);
    return joinedRoom(room);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result joinedRoom(Room room),
    Result leftRoom(Room room),
    Result addedRoommate(Roommate roommate),
    Result removedRoommate(Roommate roommate),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (joinedRoom != null) {
      return joinedRoom(room);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result joinedRoom(_JoinedRoom value),
    @required Result leftRoom(_LeftRoom value),
    @required Result addedRoommate(_AddedRoommate value),
    @required Result removedRoommate(_RemovedRoommate value),
  }) {
    assert(joinedRoom != null);
    assert(leftRoom != null);
    assert(addedRoommate != null);
    assert(removedRoommate != null);
    return joinedRoom(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result joinedRoom(_JoinedRoom value),
    Result leftRoom(_LeftRoom value),
    Result addedRoommate(_AddedRoommate value),
    Result removedRoommate(_RemovedRoommate value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (joinedRoom != null) {
      return joinedRoom(this);
    }
    return orElse();
  }
}

abstract class _JoinedRoom implements RoomActorEvent {
  const factory _JoinedRoom(Room room) = _$_JoinedRoom;

  Room get room;
  _$JoinedRoomCopyWith<_JoinedRoom> get copyWith;
}

abstract class _$LeftRoomCopyWith<$Res> {
  factory _$LeftRoomCopyWith(_LeftRoom value, $Res Function(_LeftRoom) then) =
      __$LeftRoomCopyWithImpl<$Res>;
  $Res call({Room room});

  $RoomCopyWith<$Res> get room;
}

class __$LeftRoomCopyWithImpl<$Res> extends _$RoomActorEventCopyWithImpl<$Res>
    implements _$LeftRoomCopyWith<$Res> {
  __$LeftRoomCopyWithImpl(_LeftRoom _value, $Res Function(_LeftRoom) _then)
      : super(_value, (v) => _then(v as _LeftRoom));

  @override
  _LeftRoom get _value => super._value as _LeftRoom;

  @override
  $Res call({
    Object room = freezed,
  }) {
    return _then(_LeftRoom(
      room == freezed ? _value.room : room as Room,
    ));
  }

  @override
  $RoomCopyWith<$Res> get room {
    if (_value.room == null) {
      return null;
    }
    return $RoomCopyWith<$Res>(_value.room, (value) {
      return _then(_value.copyWith(room: value));
    });
  }
}

class _$_LeftRoom implements _LeftRoom {
  const _$_LeftRoom(this.room) : assert(room != null);

  @override
  final Room room;

  @override
  String toString() {
    return 'RoomActorEvent.leftRoom(room: $room)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LeftRoom &&
            (identical(other.room, room) ||
                const DeepCollectionEquality().equals(other.room, room)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(room);

  @override
  _$LeftRoomCopyWith<_LeftRoom> get copyWith =>
      __$LeftRoomCopyWithImpl<_LeftRoom>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result joinedRoom(Room room),
    @required Result leftRoom(Room room),
    @required Result addedRoommate(Roommate roommate),
    @required Result removedRoommate(Roommate roommate),
  }) {
    assert(joinedRoom != null);
    assert(leftRoom != null);
    assert(addedRoommate != null);
    assert(removedRoommate != null);
    return leftRoom(room);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result joinedRoom(Room room),
    Result leftRoom(Room room),
    Result addedRoommate(Roommate roommate),
    Result removedRoommate(Roommate roommate),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (leftRoom != null) {
      return leftRoom(room);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result joinedRoom(_JoinedRoom value),
    @required Result leftRoom(_LeftRoom value),
    @required Result addedRoommate(_AddedRoommate value),
    @required Result removedRoommate(_RemovedRoommate value),
  }) {
    assert(joinedRoom != null);
    assert(leftRoom != null);
    assert(addedRoommate != null);
    assert(removedRoommate != null);
    return leftRoom(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result joinedRoom(_JoinedRoom value),
    Result leftRoom(_LeftRoom value),
    Result addedRoommate(_AddedRoommate value),
    Result removedRoommate(_RemovedRoommate value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (leftRoom != null) {
      return leftRoom(this);
    }
    return orElse();
  }
}

abstract class _LeftRoom implements RoomActorEvent {
  const factory _LeftRoom(Room room) = _$_LeftRoom;

  Room get room;
  _$LeftRoomCopyWith<_LeftRoom> get copyWith;
}

abstract class _$AddedRoommateCopyWith<$Res> {
  factory _$AddedRoommateCopyWith(
          _AddedRoommate value, $Res Function(_AddedRoommate) then) =
      __$AddedRoommateCopyWithImpl<$Res>;
  $Res call({Roommate roommate});

  $RoommateCopyWith<$Res> get roommate;
}

class __$AddedRoommateCopyWithImpl<$Res>
    extends _$RoomActorEventCopyWithImpl<$Res>
    implements _$AddedRoommateCopyWith<$Res> {
  __$AddedRoommateCopyWithImpl(
      _AddedRoommate _value, $Res Function(_AddedRoommate) _then)
      : super(_value, (v) => _then(v as _AddedRoommate));

  @override
  _AddedRoommate get _value => super._value as _AddedRoommate;

  @override
  $Res call({
    Object roommate = freezed,
  }) {
    return _then(_AddedRoommate(
      roommate == freezed ? _value.roommate : roommate as Roommate,
    ));
  }

  @override
  $RoommateCopyWith<$Res> get roommate {
    if (_value.roommate == null) {
      return null;
    }
    return $RoommateCopyWith<$Res>(_value.roommate, (value) {
      return _then(_value.copyWith(roommate: value));
    });
  }
}

class _$_AddedRoommate implements _AddedRoommate {
  const _$_AddedRoommate(this.roommate) : assert(roommate != null);

  @override
  final Roommate roommate;

  @override
  String toString() {
    return 'RoomActorEvent.addedRoommate(roommate: $roommate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddedRoommate &&
            (identical(other.roommate, roommate) ||
                const DeepCollectionEquality()
                    .equals(other.roommate, roommate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(roommate);

  @override
  _$AddedRoommateCopyWith<_AddedRoommate> get copyWith =>
      __$AddedRoommateCopyWithImpl<_AddedRoommate>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result joinedRoom(Room room),
    @required Result leftRoom(Room room),
    @required Result addedRoommate(Roommate roommate),
    @required Result removedRoommate(Roommate roommate),
  }) {
    assert(joinedRoom != null);
    assert(leftRoom != null);
    assert(addedRoommate != null);
    assert(removedRoommate != null);
    return addedRoommate(roommate);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result joinedRoom(Room room),
    Result leftRoom(Room room),
    Result addedRoommate(Roommate roommate),
    Result removedRoommate(Roommate roommate),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addedRoommate != null) {
      return addedRoommate(roommate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result joinedRoom(_JoinedRoom value),
    @required Result leftRoom(_LeftRoom value),
    @required Result addedRoommate(_AddedRoommate value),
    @required Result removedRoommate(_RemovedRoommate value),
  }) {
    assert(joinedRoom != null);
    assert(leftRoom != null);
    assert(addedRoommate != null);
    assert(removedRoommate != null);
    return addedRoommate(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result joinedRoom(_JoinedRoom value),
    Result leftRoom(_LeftRoom value),
    Result addedRoommate(_AddedRoommate value),
    Result removedRoommate(_RemovedRoommate value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addedRoommate != null) {
      return addedRoommate(this);
    }
    return orElse();
  }
}

abstract class _AddedRoommate implements RoomActorEvent {
  const factory _AddedRoommate(Roommate roommate) = _$_AddedRoommate;

  Roommate get roommate;
  _$AddedRoommateCopyWith<_AddedRoommate> get copyWith;
}

abstract class _$RemovedRoommateCopyWith<$Res> {
  factory _$RemovedRoommateCopyWith(
          _RemovedRoommate value, $Res Function(_RemovedRoommate) then) =
      __$RemovedRoommateCopyWithImpl<$Res>;
  $Res call({Roommate roommate});

  $RoommateCopyWith<$Res> get roommate;
}

class __$RemovedRoommateCopyWithImpl<$Res>
    extends _$RoomActorEventCopyWithImpl<$Res>
    implements _$RemovedRoommateCopyWith<$Res> {
  __$RemovedRoommateCopyWithImpl(
      _RemovedRoommate _value, $Res Function(_RemovedRoommate) _then)
      : super(_value, (v) => _then(v as _RemovedRoommate));

  @override
  _RemovedRoommate get _value => super._value as _RemovedRoommate;

  @override
  $Res call({
    Object roommate = freezed,
  }) {
    return _then(_RemovedRoommate(
      roommate == freezed ? _value.roommate : roommate as Roommate,
    ));
  }

  @override
  $RoommateCopyWith<$Res> get roommate {
    if (_value.roommate == null) {
      return null;
    }
    return $RoommateCopyWith<$Res>(_value.roommate, (value) {
      return _then(_value.copyWith(roommate: value));
    });
  }
}

class _$_RemovedRoommate implements _RemovedRoommate {
  const _$_RemovedRoommate(this.roommate) : assert(roommate != null);

  @override
  final Roommate roommate;

  @override
  String toString() {
    return 'RoomActorEvent.removedRoommate(roommate: $roommate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemovedRoommate &&
            (identical(other.roommate, roommate) ||
                const DeepCollectionEquality()
                    .equals(other.roommate, roommate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(roommate);

  @override
  _$RemovedRoommateCopyWith<_RemovedRoommate> get copyWith =>
      __$RemovedRoommateCopyWithImpl<_RemovedRoommate>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result joinedRoom(Room room),
    @required Result leftRoom(Room room),
    @required Result addedRoommate(Roommate roommate),
    @required Result removedRoommate(Roommate roommate),
  }) {
    assert(joinedRoom != null);
    assert(leftRoom != null);
    assert(addedRoommate != null);
    assert(removedRoommate != null);
    return removedRoommate(roommate);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result joinedRoom(Room room),
    Result leftRoom(Room room),
    Result addedRoommate(Roommate roommate),
    Result removedRoommate(Roommate roommate),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removedRoommate != null) {
      return removedRoommate(roommate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result joinedRoom(_JoinedRoom value),
    @required Result leftRoom(_LeftRoom value),
    @required Result addedRoommate(_AddedRoommate value),
    @required Result removedRoommate(_RemovedRoommate value),
  }) {
    assert(joinedRoom != null);
    assert(leftRoom != null);
    assert(addedRoommate != null);
    assert(removedRoommate != null);
    return removedRoommate(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result joinedRoom(_JoinedRoom value),
    Result leftRoom(_LeftRoom value),
    Result addedRoommate(_AddedRoommate value),
    Result removedRoommate(_RemovedRoommate value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removedRoommate != null) {
      return removedRoommate(this);
    }
    return orElse();
  }
}

abstract class _RemovedRoommate implements RoomActorEvent {
  const factory _RemovedRoommate(Roommate roommate) = _$_RemovedRoommate;

  Roommate get roommate;
  _$RemovedRoommateCopyWith<_RemovedRoommate> get copyWith;
}

class _$RoomActorStateTearOff {
  const _$RoomActorStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

  _ActionFailure actionFailure(RoomFailure roomFailure) {
    return _ActionFailure(
      roomFailure,
    );
  }

  _ActionSuccess actionSuccess() {
    return const _ActionSuccess();
  }
}

// ignore: unused_element
const $RoomActorState = _$RoomActorStateTearOff();

mixin _$RoomActorState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result actionFailure(RoomFailure roomFailure),
    @required Result actionSuccess(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result actionFailure(RoomFailure roomFailure),
    Result actionSuccess(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result actionFailure(_ActionFailure value),
    @required Result actionSuccess(_ActionSuccess value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result actionFailure(_ActionFailure value),
    Result actionSuccess(_ActionSuccess value),
    @required Result orElse(),
  });
}

abstract class $RoomActorStateCopyWith<$Res> {
  factory $RoomActorStateCopyWith(
          RoomActorState value, $Res Function(RoomActorState) then) =
      _$RoomActorStateCopyWithImpl<$Res>;
}

class _$RoomActorStateCopyWithImpl<$Res>
    implements $RoomActorStateCopyWith<$Res> {
  _$RoomActorStateCopyWithImpl(this._value, this._then);

  final RoomActorState _value;
  // ignore: unused_field
  final $Res Function(RoomActorState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$RoomActorStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'RoomActorState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result actionFailure(RoomFailure roomFailure),
    @required Result actionSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(actionFailure != null);
    assert(actionSuccess != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result actionFailure(RoomFailure roomFailure),
    Result actionSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result actionFailure(_ActionFailure value),
    @required Result actionSuccess(_ActionSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(actionFailure != null);
    assert(actionSuccess != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result actionFailure(_ActionFailure value),
    Result actionSuccess(_ActionSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RoomActorState {
  const factory _Initial() = _$_Initial;
}

abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
}

class __$ActionInProgressCopyWithImpl<$Res>
    extends _$RoomActorStateCopyWithImpl<$Res>
    implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(
      _ActionInProgress _value, $Res Function(_ActionInProgress) _then)
      : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'RoomActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result actionFailure(RoomFailure roomFailure),
    @required Result actionSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(actionFailure != null);
    assert(actionSuccess != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result actionFailure(RoomFailure roomFailure),
    Result actionSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result actionFailure(_ActionFailure value),
    @required Result actionSuccess(_ActionSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(actionFailure != null);
    assert(actionSuccess != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result actionFailure(_ActionFailure value),
    Result actionSuccess(_ActionSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements RoomActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

abstract class _$ActionFailureCopyWith<$Res> {
  factory _$ActionFailureCopyWith(
          _ActionFailure value, $Res Function(_ActionFailure) then) =
      __$ActionFailureCopyWithImpl<$Res>;
  $Res call({RoomFailure roomFailure});

  $RoomFailureCopyWith<$Res> get roomFailure;
}

class __$ActionFailureCopyWithImpl<$Res>
    extends _$RoomActorStateCopyWithImpl<$Res>
    implements _$ActionFailureCopyWith<$Res> {
  __$ActionFailureCopyWithImpl(
      _ActionFailure _value, $Res Function(_ActionFailure) _then)
      : super(_value, (v) => _then(v as _ActionFailure));

  @override
  _ActionFailure get _value => super._value as _ActionFailure;

  @override
  $Res call({
    Object roomFailure = freezed,
  }) {
    return _then(_ActionFailure(
      roomFailure == freezed ? _value.roomFailure : roomFailure as RoomFailure,
    ));
  }

  @override
  $RoomFailureCopyWith<$Res> get roomFailure {
    if (_value.roomFailure == null) {
      return null;
    }
    return $RoomFailureCopyWith<$Res>(_value.roomFailure, (value) {
      return _then(_value.copyWith(roomFailure: value));
    });
  }
}

class _$_ActionFailure implements _ActionFailure {
  const _$_ActionFailure(this.roomFailure) : assert(roomFailure != null);

  @override
  final RoomFailure roomFailure;

  @override
  String toString() {
    return 'RoomActorState.actionFailure(roomFailure: $roomFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActionFailure &&
            (identical(other.roomFailure, roomFailure) ||
                const DeepCollectionEquality()
                    .equals(other.roomFailure, roomFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(roomFailure);

  @override
  _$ActionFailureCopyWith<_ActionFailure> get copyWith =>
      __$ActionFailureCopyWithImpl<_ActionFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result actionFailure(RoomFailure roomFailure),
    @required Result actionSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(actionFailure != null);
    assert(actionSuccess != null);
    return actionFailure(roomFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result actionFailure(RoomFailure roomFailure),
    Result actionSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionFailure != null) {
      return actionFailure(roomFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result actionFailure(_ActionFailure value),
    @required Result actionSuccess(_ActionSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(actionFailure != null);
    assert(actionSuccess != null);
    return actionFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result actionFailure(_ActionFailure value),
    Result actionSuccess(_ActionSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionFailure != null) {
      return actionFailure(this);
    }
    return orElse();
  }
}

abstract class _ActionFailure implements RoomActorState {
  const factory _ActionFailure(RoomFailure roomFailure) = _$_ActionFailure;

  RoomFailure get roomFailure;
  _$ActionFailureCopyWith<_ActionFailure> get copyWith;
}

abstract class _$ActionSuccessCopyWith<$Res> {
  factory _$ActionSuccessCopyWith(
          _ActionSuccess value, $Res Function(_ActionSuccess) then) =
      __$ActionSuccessCopyWithImpl<$Res>;
}

class __$ActionSuccessCopyWithImpl<$Res>
    extends _$RoomActorStateCopyWithImpl<$Res>
    implements _$ActionSuccessCopyWith<$Res> {
  __$ActionSuccessCopyWithImpl(
      _ActionSuccess _value, $Res Function(_ActionSuccess) _then)
      : super(_value, (v) => _then(v as _ActionSuccess));

  @override
  _ActionSuccess get _value => super._value as _ActionSuccess;
}

class _$_ActionSuccess implements _ActionSuccess {
  const _$_ActionSuccess();

  @override
  String toString() {
    return 'RoomActorState.actionSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ActionSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result actionFailure(RoomFailure roomFailure),
    @required Result actionSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(actionFailure != null);
    assert(actionSuccess != null);
    return actionSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result actionFailure(RoomFailure roomFailure),
    Result actionSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionSuccess != null) {
      return actionSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result actionFailure(_ActionFailure value),
    @required Result actionSuccess(_ActionSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(actionFailure != null);
    assert(actionSuccess != null);
    return actionSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result actionFailure(_ActionFailure value),
    Result actionSuccess(_ActionSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionSuccess != null) {
      return actionSuccess(this);
    }
    return orElse();
  }
}

abstract class _ActionSuccess implements RoomActorState {
  const factory _ActionSuccess() = _$_ActionSuccess;
}
