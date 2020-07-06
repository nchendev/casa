part of 'room_watcher_bloc.dart';

@freezed
abstract class RoomWatcherEvent with _$RoomWatcherEvent {
  const factory RoomWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory RoomWatcherEvent.roomsReceived(
    Either<RoomFailure, KtList<Room>> failureOrRooms,
  ) = _RoomsReceived;
}
