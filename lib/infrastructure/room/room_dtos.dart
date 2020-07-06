import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lowkey/domain/core/value_objects.dart';
import 'package:lowkey/domain/room/room.dart';
import 'package:lowkey/domain/room/roommate.dart';
import 'package:lowkey/domain/room/value_objects.dart';
import 'package:kt_dart/kt.dart';

part 'room_dtos.freezed.dart';
part 'room_dtos.g.dart';

@freezed
abstract class RoomDTO implements _$RoomDTO {
  const RoomDTO._();

  const factory RoomDTO({
    @JsonKey(ignore: true) String id,
    @required String name,
    @required List<RoommateDTO> roommates,
    @required @ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _RoomDTO;

  factory RoomDTO.fromDomain(Room room) {
    return RoomDTO(
      id: room.id.getOrCrash(),
      name: room.name.getOrCrash(),
      roommates: room.roommates
          .getOrCrash()
          .map(
            (roommate) => RoommateDTO.fromDomain(roommate),
          )
          .asList(),
      serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  Room toDomain() {
    return Room(
      id: UniqueId.fromUniqueString(id),
      name: RoomName(name),
      roommates: RoommateList(roommates
          .map((roommateDTO) => roommateDTO.toDomain())
          .toImmutableList()),
    );
  }

  factory RoomDTO.fromJson(Map<String, dynamic> json) =>
      _$RoomDTOFromJson(json);

  factory RoomDTO.fromFirestore(DocumentSnapshot doc) {
    return RoomDTO.fromJson(doc.data).copyWith(id: doc.documentID);
  }
}

class ServerTimestampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimestampConverter();

  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}

@freezed
abstract class RoommateDTO implements _$RoommateDTO {
  const RoommateDTO._();

  const factory RoommateDTO({
    @required String id,
    @required String username,
    @required String nickname,
  }) = _RoommateDTO;

  factory RoommateDTO.fromDomain(Roommate roommate) {
    return RoommateDTO(
      id: roommate.id.getOrCrash(),
      username: roommate.username.getOrCrash(),
      nickname: roommate.nickname.getOrCrash(),
    );
  }

  Roommate toDomain() {
    return Roommate(
      id: UniqueId.fromUniqueString(id),
      username: RoommateUserName(username),
      nickname: RoommateNickName(nickname),
    );
  }

  factory RoommateDTO.fromJson(Map<String, dynamic> json) =>
      _$RoommateDTOFromJson(json);
}
