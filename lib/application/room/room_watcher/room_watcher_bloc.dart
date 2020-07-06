import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:lowkey/domain/room/i_room_repository.dart';
import 'package:lowkey/domain/room/room.dart';
import 'package:lowkey/domain/room/room_failure.dart';

part 'room_watcher_event.dart';
part 'room_watcher_state.dart';
part 'room_watcher_bloc.freezed.dart';

@injectable
class RoomWatcherBloc extends Bloc<RoomWatcherEvent, RoomWatcherState> {
  final IRoomRepository _roomRepository;

  RoomWatcherBloc(this._roomRepository);

  StreamSubscription<Either<RoomFailure, KtList<Room>>> _roomStreamSubscription;

  @override
  RoomWatcherState get initialState => const RoomWatcherState.initial();

  @override
  Stream<RoomWatcherState> mapEventToState(
    RoomWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const RoomWatcherState.loadInProgress();
        await _roomStreamSubscription?.cancel();
        _roomStreamSubscription = _roomRepository.watchAll().listen(
              (failureOrRooms) =>
                  add(RoomWatcherEvent.roomsReceived(failureOrRooms)),
            );
      },
      // watchuncompleted was in example for using roomstreamsub
      // however could maybe use it to toggle a "refresh"?
      roomsReceived: (e) async* {
        yield e.failureOrRooms.fold(
          (f) => RoomWatcherState.loadFailure(f),
          (room) => RoomWatcherState.loadSuccess(room),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _roomStreamSubscription?.cancel();
    return super.close();
  }
}
