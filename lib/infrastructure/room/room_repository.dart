import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:dartz/dartz.dart';
import 'package:lowkey/domain/room/i_room_repository.dart';
import 'package:lowkey/domain/room/roommate.dart';
import 'package:lowkey/domain/room/room_failure.dart';
import 'package:lowkey/domain/room/room.dart';
import 'package:lowkey/infrastructure/core/firestore_helpers.dart';
import 'package:lowkey/infrastructure/room/room_dtos.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IRoomRepository)
class RoomRepository implements IRoomRepository {
  final Firestore _firestore;

  RoomRepository(this._firestore);

  @override
  Stream<Either<RoomFailure, KtList<Room>>> watchAll() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc.roomCollection
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map((snapshot) => right<RoomFailure, KtList<Room>>(snapshot.documents
            .map((doc) => RoomDTO.fromFirestore(doc).toDomain())
            .toImmutableList()))
        .onErrorReturnWith((e) {
      if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        return left(const RoomFailure.insufficientPermissions());
      } else {
        print(e.toString());
        return left(const RoomFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<RoomFailure, Unit>> createRoom(Room room) async {
    try {
      final userDoc = await _firestore.userDocument();
      final roomDTO = RoomDTO.fromDomain(room);

      await userDoc.roomCollection
          .document(roomDTO.id)
          .setData(roomDTO.toJson());

      return right(unit);
    } on PlatformException catch (e) {
      if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        return left(const RoomFailure.insufficientPermissions());
      } else {
        print(e.toString());
        return left(const RoomFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<RoomFailure, Unit>> deleteRoom(Room room) async {
    try {
      final userDoc = await _firestore.userDocument();
      final roomDTO = RoomDTO.fromDomain(room);

      await userDoc.roomCollection.document(roomDTO.id).delete();

      return right(unit);
    } on PlatformException catch (e) {
      if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        return left(const RoomFailure.insufficientPermissions());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const RoomFailure.unableToDeleteRoom());
      } else {
        print(e.toString());
        return left(const RoomFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<RoomFailure, Unit>> joinRoom(Room room) async {
    //TODO: ok so in implementation update the room object with the new user
    // then call this on the database to update the room obj
    // OR get to the room collection db and then add the new user
    // actually this prolly wrong idk
    try {
      final userDoc = await _firestore.userDocument();
      final roomDTO = RoomDTO.fromDomain(room);

      await userDoc.roomCollection
          .document(roomDTO.id)
          .setData(roomDTO.toJson());

      return right(unit);
    } on PlatformException catch (e) {
      if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        return left(const RoomFailure.insufficientPermissions());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const RoomFailure.unableToJoinRoom());
      } else {
        print(e.toString());
        return left(const RoomFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<RoomFailure, Unit>> leaveRoom(Room room) async {
    // TODO: remove users id from list of roommates,
    // and if is last user delete the room object as well
    // TODO: implement leaveRoom
    throw UnimplementedError();
  }

  @override
  Future<Either<RoomFailure, Unit>> addRoommate(Roommate roommate) async {
    // TODO: worry about rm stuff after room stuff works
    // TODO: implement addRoommate
    throw UnimplementedError();
  }

  @override
  Future<Either<RoomFailure, Unit>> removeRoommate(Roommate roommate) async {
    // TODO: implement removeRoommate
    throw UnimplementedError();
  }
}
