part of 'room_actor_bloc.dart';

@freezed
abstract class RoomActorEvent with _$RoomActorEvent {
  const factory RoomActorEvent.joinedRoom(Room room) =
      _JoinedRoom; // room parameter might not be nec
  const factory RoomActorEvent.leftRoom(Room room) =
      _LeftRoom; // room parameter might not be nec
  const factory RoomActorEvent.addedRoommate(Roommate roommate) =
      _AddedRoommate;
  const factory RoomActorEvent.removedRoommate(Roommate roommate) =
      _RemovedRoommate;
  //TODO: add module etc

}
