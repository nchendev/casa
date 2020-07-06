import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:lowkey/domain/core/failures.dart';
import 'package:lowkey/domain/core/value_objects.dart';
import 'package:lowkey/domain/room/roommate.dart';
import 'package:lowkey/domain/room/value_objects.dart';

part 'room.freezed.dart';

@freezed
abstract class Room implements _$Room {
  const Room._();

  const factory Room({
    @required UniqueId id,
    @required RoomName name,
    @required RoommateList<Roommate> roommates,
  }) = _Room;

  factory Room.empty() => Room(
        id: UniqueId(),
        name: RoomName(""),
        roommates: RoommateList(emptyList()),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
        .andThen(roommates
            .getOrCrash()
            .map((roommate) => roommate.failureOption)
            .filter((o) => o.isSome())
            .getOrElse(0, (_) => none())
            .fold(() => right(unit), (f) => left(f)))
        .fold((f) => some(f), (_) => none());
  }
}
