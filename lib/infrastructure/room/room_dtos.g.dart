// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RoomDTO _$_$_RoomDTOFromJson(Map<String, dynamic> json) {
  return _$_RoomDTO(
    name: json['name'] as String,
    roommates: (json['roommates'] as List)
        ?.map((e) =>
            e == null ? null : RoommateDTO.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    serverTimeStamp:
        const ServerTimestampConverter().fromJson(json['serverTimeStamp']),
  );
}

Map<String, dynamic> _$_$_RoomDTOToJson(_$_RoomDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'roommates': instance.roommates,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };

_$_RoommateDTO _$_$_RoommateDTOFromJson(Map<String, dynamic> json) {
  return _$_RoommateDTO(
    id: json['id'] as String,
    username: json['username'] as String,
    nickname: json['nickname'] as String,
  );
}

Map<String, dynamic> _$_$_RoommateDTOToJson(_$_RoommateDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'nickname': instance.nickname,
    };
