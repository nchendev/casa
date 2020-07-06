// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'room_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RoomDTO _$RoomDTOFromJson(Map<String, dynamic> json) {
  return _RoomDTO.fromJson(json);
}

class _$RoomDTOTearOff {
  const _$RoomDTOTearOff();

  _RoomDTO call(
      {@JsonKey(ignore: true) String id,
      @required String name,
      @required List<RoommateDTO> roommates,
      @required @ServerTimestampConverter() FieldValue serverTimeStamp}) {
    return _RoomDTO(
      id: id,
      name: name,
      roommates: roommates,
      serverTimeStamp: serverTimeStamp,
    );
  }
}

// ignore: unused_element
const $RoomDTO = _$RoomDTOTearOff();

mixin _$RoomDTO {
  @JsonKey(ignore: true)
  String get id;
  String get name;
  List<RoommateDTO> get roommates;
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;

  Map<String, dynamic> toJson();
  $RoomDTOCopyWith<RoomDTO> get copyWith;
}

abstract class $RoomDTOCopyWith<$Res> {
  factory $RoomDTOCopyWith(RoomDTO value, $Res Function(RoomDTO) then) =
      _$RoomDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String name,
      List<RoommateDTO> roommates,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

class _$RoomDTOCopyWithImpl<$Res> implements $RoomDTOCopyWith<$Res> {
  _$RoomDTOCopyWithImpl(this._value, this._then);

  final RoomDTO _value;
  // ignore: unused_field
  final $Res Function(RoomDTO) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object roommates = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      roommates: roommates == freezed
          ? _value.roommates
          : roommates as List<RoommateDTO>,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

abstract class _$RoomDTOCopyWith<$Res> implements $RoomDTOCopyWith<$Res> {
  factory _$RoomDTOCopyWith(_RoomDTO value, $Res Function(_RoomDTO) then) =
      __$RoomDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String name,
      List<RoommateDTO> roommates,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

class __$RoomDTOCopyWithImpl<$Res> extends _$RoomDTOCopyWithImpl<$Res>
    implements _$RoomDTOCopyWith<$Res> {
  __$RoomDTOCopyWithImpl(_RoomDTO _value, $Res Function(_RoomDTO) _then)
      : super(_value, (v) => _then(v as _RoomDTO));

  @override
  _RoomDTO get _value => super._value as _RoomDTO;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object roommates = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_RoomDTO(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      roommates: roommates == freezed
          ? _value.roommates
          : roommates as List<RoommateDTO>,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

@JsonSerializable()
class _$_RoomDTO extends _RoomDTO {
  const _$_RoomDTO(
      {@JsonKey(ignore: true) this.id,
      @required this.name,
      @required this.roommates,
      @required @ServerTimestampConverter() this.serverTimeStamp})
      : assert(name != null),
        assert(roommates != null),
        assert(serverTimeStamp != null),
        super._();

  factory _$_RoomDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_RoomDTOFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String name;
  @override
  final List<RoommateDTO> roommates;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString() {
    return 'RoomDTO(id: $id, name: $name, roommates: $roommates, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RoomDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.roommates, roommates) ||
                const DeepCollectionEquality()
                    .equals(other.roommates, roommates)) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(roommates) ^
      const DeepCollectionEquality().hash(serverTimeStamp);

  @override
  _$RoomDTOCopyWith<_RoomDTO> get copyWith =>
      __$RoomDTOCopyWithImpl<_RoomDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RoomDTOToJson(this);
  }
}

abstract class _RoomDTO extends RoomDTO {
  const _RoomDTO._() : super._();
  const factory _RoomDTO(
          {@JsonKey(ignore: true) String id,
          @required String name,
          @required List<RoommateDTO> roommates,
          @required @ServerTimestampConverter() FieldValue serverTimeStamp}) =
      _$_RoomDTO;

  factory _RoomDTO.fromJson(Map<String, dynamic> json) = _$_RoomDTO.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get name;
  @override
  List<RoommateDTO> get roommates;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @override
  _$RoomDTOCopyWith<_RoomDTO> get copyWith;
}

RoommateDTO _$RoommateDTOFromJson(Map<String, dynamic> json) {
  return _RoommateDTO.fromJson(json);
}

class _$RoommateDTOTearOff {
  const _$RoommateDTOTearOff();

  _RoommateDTO call(
      {@required String id,
      @required String username,
      @required String nickname}) {
    return _RoommateDTO(
      id: id,
      username: username,
      nickname: nickname,
    );
  }
}

// ignore: unused_element
const $RoommateDTO = _$RoommateDTOTearOff();

mixin _$RoommateDTO {
  String get id;
  String get username;
  String get nickname;

  Map<String, dynamic> toJson();
  $RoommateDTOCopyWith<RoommateDTO> get copyWith;
}

abstract class $RoommateDTOCopyWith<$Res> {
  factory $RoommateDTOCopyWith(
          RoommateDTO value, $Res Function(RoommateDTO) then) =
      _$RoommateDTOCopyWithImpl<$Res>;
  $Res call({String id, String username, String nickname});
}

class _$RoommateDTOCopyWithImpl<$Res> implements $RoommateDTOCopyWith<$Res> {
  _$RoommateDTOCopyWithImpl(this._value, this._then);

  final RoommateDTO _value;
  // ignore: unused_field
  final $Res Function(RoommateDTO) _then;

  @override
  $Res call({
    Object id = freezed,
    Object username = freezed,
    Object nickname = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      username: username == freezed ? _value.username : username as String,
      nickname: nickname == freezed ? _value.nickname : nickname as String,
    ));
  }
}

abstract class _$RoommateDTOCopyWith<$Res>
    implements $RoommateDTOCopyWith<$Res> {
  factory _$RoommateDTOCopyWith(
          _RoommateDTO value, $Res Function(_RoommateDTO) then) =
      __$RoommateDTOCopyWithImpl<$Res>;
  @override
  $Res call({String id, String username, String nickname});
}

class __$RoommateDTOCopyWithImpl<$Res> extends _$RoommateDTOCopyWithImpl<$Res>
    implements _$RoommateDTOCopyWith<$Res> {
  __$RoommateDTOCopyWithImpl(
      _RoommateDTO _value, $Res Function(_RoommateDTO) _then)
      : super(_value, (v) => _then(v as _RoommateDTO));

  @override
  _RoommateDTO get _value => super._value as _RoommateDTO;

  @override
  $Res call({
    Object id = freezed,
    Object username = freezed,
    Object nickname = freezed,
  }) {
    return _then(_RoommateDTO(
      id: id == freezed ? _value.id : id as String,
      username: username == freezed ? _value.username : username as String,
      nickname: nickname == freezed ? _value.nickname : nickname as String,
    ));
  }
}

@JsonSerializable()
class _$_RoommateDTO extends _RoommateDTO {
  const _$_RoommateDTO(
      {@required this.id, @required this.username, @required this.nickname})
      : assert(id != null),
        assert(username != null),
        assert(nickname != null),
        super._();

  factory _$_RoommateDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_RoommateDTOFromJson(json);

  @override
  final String id;
  @override
  final String username;
  @override
  final String nickname;

  @override
  String toString() {
    return 'RoommateDTO(id: $id, username: $username, nickname: $nickname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RoommateDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.nickname, nickname) ||
                const DeepCollectionEquality()
                    .equals(other.nickname, nickname)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(nickname);

  @override
  _$RoommateDTOCopyWith<_RoommateDTO> get copyWith =>
      __$RoommateDTOCopyWithImpl<_RoommateDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RoommateDTOToJson(this);
  }
}

abstract class _RoommateDTO extends RoommateDTO {
  const _RoommateDTO._() : super._();
  const factory _RoommateDTO(
      {@required String id,
      @required String username,
      @required String nickname}) = _$_RoommateDTO;

  factory _RoommateDTO.fromJson(Map<String, dynamic> json) =
      _$_RoommateDTO.fromJson;

  @override
  String get id;
  @override
  String get username;
  @override
  String get nickname;
  @override
  _$RoommateDTOCopyWith<_RoommateDTO> get copyWith;
}
