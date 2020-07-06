import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:lowkey/domain/room/room.dart';
import 'package:lowkey/domain/room/room_failure.dart';
import 'package:lowkey/domain/room/roommate.dart';

abstract class IRoomRepository {
  Stream<Either<RoomFailure, KtList<Room>>> watchAll();
  Future<Either<RoomFailure, Unit>> createRoom();
  Future<Either<RoomFailure, Unit>> joinRoom(Room room);
  Future<Either<RoomFailure, Unit>> leaveRoom(Room room);
  Future<Either<RoomFailure, Unit>> addRoommate(Roommate roommate);
  Future<Either<RoomFailure, Unit>> removeRoommate(Roommate roommate);
  //TODO: module shit in future
}
