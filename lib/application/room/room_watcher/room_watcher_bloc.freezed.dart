// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'room_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RoomWatcherEventTearOff {
  const _$RoomWatcherEventTearOff();

  _WatchAllStarted watchAllStarted() {
    return const _WatchAllStarted();
  }

  _RoomsReceived roomsReceived(
      Either<RoomFailure, KtList<Room>> failureOrRooms) {
    return _RoomsReceived(
      failureOrRooms,
    );
  }
}

// ignore: unused_element
const $RoomWatcherEvent = _$RoomWatcherEventTearOff();

mixin _$RoomWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required
        Result roomsReceived(Either<RoomFailure, KtList<Room>> failureOrRooms),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result roomsReceived(Either<RoomFailure, KtList<Room>> failureOrRooms),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result roomsReceived(_RoomsReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result roomsReceived(_RoomsReceived value),
    @required Result orElse(),
  });
}

abstract class $RoomWatcherEventCopyWith<$Res> {
  factory $RoomWatcherEventCopyWith(
          RoomWatcherEvent value, $Res Function(RoomWatcherEvent) then) =
      _$RoomWatcherEventCopyWithImpl<$Res>;
}

class _$RoomWatcherEventCopyWithImpl<$Res>
    implements $RoomWatcherEventCopyWith<$Res> {
  _$RoomWatcherEventCopyWithImpl(this._value, this._then);

  final RoomWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(RoomWatcherEvent) _then;
}

abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
}

class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$RoomWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllStartedCopyWith<$Res> {
  __$WatchAllStartedCopyWithImpl(
      _WatchAllStarted _value, $Res Function(_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllStarted));

  @override
  _WatchAllStarted get _value => super._value as _WatchAllStarted;
}

class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted();

  @override
  String toString() {
    return 'RoomWatcherEvent.watchAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required
        Result roomsReceived(Either<RoomFailure, KtList<Room>> failureOrRooms),
  }) {
    assert(watchAllStarted != null);
    assert(roomsReceived != null);
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result roomsReceived(Either<RoomFailure, KtList<Room>> failureOrRooms),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result roomsReceived(_RoomsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(roomsReceived != null);
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result roomsReceived(_RoomsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements RoomWatcherEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

abstract class _$RoomsReceivedCopyWith<$Res> {
  factory _$RoomsReceivedCopyWith(
          _RoomsReceived value, $Res Function(_RoomsReceived) then) =
      __$RoomsReceivedCopyWithImpl<$Res>;
  $Res call({Either<RoomFailure, KtList<Room>> failureOrRooms});
}

class __$RoomsReceivedCopyWithImpl<$Res>
    extends _$RoomWatcherEventCopyWithImpl<$Res>
    implements _$RoomsReceivedCopyWith<$Res> {
  __$RoomsReceivedCopyWithImpl(
      _RoomsReceived _value, $Res Function(_RoomsReceived) _then)
      : super(_value, (v) => _then(v as _RoomsReceived));

  @override
  _RoomsReceived get _value => super._value as _RoomsReceived;

  @override
  $Res call({
    Object failureOrRooms = freezed,
  }) {
    return _then(_RoomsReceived(
      failureOrRooms == freezed
          ? _value.failureOrRooms
          : failureOrRooms as Either<RoomFailure, KtList<Room>>,
    ));
  }
}

class _$_RoomsReceived implements _RoomsReceived {
  const _$_RoomsReceived(this.failureOrRooms) : assert(failureOrRooms != null);

  @override
  final Either<RoomFailure, KtList<Room>> failureOrRooms;

  @override
  String toString() {
    return 'RoomWatcherEvent.roomsReceived(failureOrRooms: $failureOrRooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RoomsReceived &&
            (identical(other.failureOrRooms, failureOrRooms) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrRooms, failureOrRooms)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrRooms);

  @override
  _$RoomsReceivedCopyWith<_RoomsReceived> get copyWith =>
      __$RoomsReceivedCopyWithImpl<_RoomsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required
        Result roomsReceived(Either<RoomFailure, KtList<Room>> failureOrRooms),
  }) {
    assert(watchAllStarted != null);
    assert(roomsReceived != null);
    return roomsReceived(failureOrRooms);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result roomsReceived(Either<RoomFailure, KtList<Room>> failureOrRooms),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (roomsReceived != null) {
      return roomsReceived(failureOrRooms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result roomsReceived(_RoomsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(roomsReceived != null);
    return roomsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result roomsReceived(_RoomsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (roomsReceived != null) {
      return roomsReceived(this);
    }
    return orElse();
  }
}

abstract class _RoomsReceived implements RoomWatcherEvent {
  const factory _RoomsReceived(
      Either<RoomFailure, KtList<Room>> failureOrRooms) = _$_RoomsReceived;

  Either<RoomFailure, KtList<Room>> get failureOrRooms;
  _$RoomsReceivedCopyWith<_RoomsReceived> get copyWith;
}

class _$RoomWatcherStateTearOff {
  const _$RoomWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(KtList<Room> rooms) {
    return _LoadSuccess(
      rooms,
    );
  }

  _LoadFailure loadFailure(RoomFailure roomFailure) {
    return _LoadFailure(
      roomFailure,
    );
  }
}

// ignore: unused_element
const $RoomWatcherState = _$RoomWatcherStateTearOff();

mixin _$RoomWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Room> rooms),
    @required Result loadFailure(RoomFailure roomFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Room> rooms),
    Result loadFailure(RoomFailure roomFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  });
}

abstract class $RoomWatcherStateCopyWith<$Res> {
  factory $RoomWatcherStateCopyWith(
          RoomWatcherState value, $Res Function(RoomWatcherState) then) =
      _$RoomWatcherStateCopyWithImpl<$Res>;
}

class _$RoomWatcherStateCopyWithImpl<$Res>
    implements $RoomWatcherStateCopyWith<$Res> {
  _$RoomWatcherStateCopyWithImpl(this._value, this._then);

  final RoomWatcherState _value;
  // ignore: unused_field
  final $Res Function(RoomWatcherState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$RoomWatcherStateCopyWithImpl<$Res>
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
    return 'RoomWatcherState.initial()';
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
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Room> rooms),
    @required Result loadFailure(RoomFailure roomFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Room> rooms),
    Result loadFailure(RoomFailure roomFailure),
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
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RoomWatcherState {
  const factory _Initial() = _$_Initial;
}

abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

class __$LoadInProgressCopyWithImpl<$Res>
    extends _$RoomWatcherStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'RoomWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Room> rooms),
    @required Result loadFailure(RoomFailure roomFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Room> rooms),
    Result loadFailure(RoomFailure roomFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements RoomWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Room> rooms});
}

class __$LoadSuccessCopyWithImpl<$Res>
    extends _$RoomWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object rooms = freezed,
  }) {
    return _then(_LoadSuccess(
      rooms == freezed ? _value.rooms : rooms as KtList<Room>,
    ));
  }
}

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.rooms) : assert(rooms != null);

  @override
  final KtList<Room> rooms;

  @override
  String toString() {
    return 'RoomWatcherState.loadSuccess(rooms: $rooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.rooms, rooms) ||
                const DeepCollectionEquality().equals(other.rooms, rooms)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(rooms);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Room> rooms),
    @required Result loadFailure(RoomFailure roomFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(rooms);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Room> rooms),
    Result loadFailure(RoomFailure roomFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(rooms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements RoomWatcherState {
  const factory _LoadSuccess(KtList<Room> rooms) = _$_LoadSuccess;

  KtList<Room> get rooms;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({RoomFailure roomFailure});

  $RoomFailureCopyWith<$Res> get roomFailure;
}

class __$LoadFailureCopyWithImpl<$Res>
    extends _$RoomWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object roomFailure = freezed,
  }) {
    return _then(_LoadFailure(
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

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.roomFailure) : assert(roomFailure != null);

  @override
  final RoomFailure roomFailure;

  @override
  String toString() {
    return 'RoomWatcherState.loadFailure(roomFailure: $roomFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.roomFailure, roomFailure) ||
                const DeepCollectionEquality()
                    .equals(other.roomFailure, roomFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(roomFailure);

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Room> rooms),
    @required Result loadFailure(RoomFailure roomFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(roomFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Room> rooms),
    Result loadFailure(RoomFailure roomFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(roomFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements RoomWatcherState {
  const factory _LoadFailure(RoomFailure roomFailure) = _$_LoadFailure;

  RoomFailure get roomFailure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
