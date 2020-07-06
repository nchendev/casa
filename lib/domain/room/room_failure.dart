import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_failure.freezed.dart';

@freezed
abstract class RoomFailure with _$RoomFailure {
  const factory RoomFailure.unexpected() = _Unexpected;
  const factory RoomFailure.insufficientPermissions() =
      _InsufficientPermissions;
  const factory RoomFailure.unableToJoinRoom() = _UnableToJoinRoom;
  const factory RoomFailure.unableToDeleteRoom() = _UnableToDeleteRoom;
  const factory RoomFailure.unableToLeaveRoom() = _UnableToLeaveRoom;
}
