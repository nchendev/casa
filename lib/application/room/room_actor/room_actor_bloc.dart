import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:lowkey/domain/room/i_room_repository.dart';
import 'package:lowkey/domain/room/room.dart';
import 'package:lowkey/domain/room/room_failure.dart';
import 'package:lowkey/domain/room/roommate.dart';
import 'package:meta/meta.dart';

part 'room_actor_event.dart';
part 'room_actor_state.dart';
part 'room_actor_bloc.freezed.dart';

@injectable
class RoomActorBloc extends Bloc<RoomActorEvent, RoomActorState> {
  final IRoomRepository _roomRepository;

  RoomActorBloc(this._roomRepository);

  @override
  RoomActorState get initialState => const RoomActorState.initial();

  @override
  Stream<RoomActorState> mapEventToState(
    RoomActorEvent event,
  ) async* {
    yield* event.map(joinedRoom: (e) async* {
      yield const RoomActorState.actionInProgress();
      final possibleFailure = await _roomRepository.joinRoom(e.room);
      yield possibleFailure.fold(
        (f) => RoomActorState.actionFailure(f),
        (_) => const RoomActorState.actionSuccess(),
      );
    }, leftRoom: (e) async* {
      yield const RoomActorState.actionInProgress();
      final possibleFailure = await _roomRepository.leaveRoom(e.room);
      yield possibleFailure.fold(
        (f) => RoomActorState.actionFailure(f),
        (_) => const RoomActorState.actionSuccess(),
      );
    }, addedRoommate: (e) async* {
      yield const RoomActorState.actionInProgress();
      final possibleFailure = await _roomRepository.addRoommate(e.roommate);
      yield possibleFailure.fold(
        (f) => RoomActorState.actionFailure(f),
        (_) => const RoomActorState.actionSuccess(),
      );
    }, removedRoommate: (e) async* {
      yield const RoomActorState.actionInProgress();
      final possibleFailure = await _roomRepository.removeRoommate(e.roommate);
      yield possibleFailure.fold(
        (f) => RoomActorState.actionFailure(f),
        (_) => const RoomActorState.actionSuccess(),
      );
    });
  }
}
