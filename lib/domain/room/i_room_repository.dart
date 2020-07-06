import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:lowkey/domain/room/room_failure.dart';
import 'package:lowkey/domain/room/roommate.dart';

abstract class IRoomRepository {
  Stream<Either<RoomFailure, KtList<Roommate>>> watchRoommates();
  Future<Either<RoomFailure, Unit>> createRoom();
  Future<Either<RoomFailure, Unit>> joinRoom();
  Future<Either<RoomFailure, Unit>> leaveRoom();
  Future<Either<RoomFailure, Unit>> addRoommate();
  Future<Either<RoomFailure, Unit>> removeRoommate();
  //TODO: crud for modules
}
