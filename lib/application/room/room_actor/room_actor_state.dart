part of 'room_actor_bloc.dart';

@freezed
abstract class RoomActorState with _$RoomActorState {
  const factory RoomActorState.initial() = _Initial;
  const factory RoomActorState.actionInProgress() = _ActionInProgress;
  const factory RoomActorState.actionFailure(RoomFailure roomFailure) =
      _ActionFailure;
  const factory RoomActorState.actionSuccess() = _ActionSuccess;
}
