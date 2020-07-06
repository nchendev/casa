import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lowkey/domain/core/failures.dart';
import 'package:lowkey/domain/core/value_objects.dart';
import 'package:lowkey/domain/room/value_objects.dart';

part 'roommate.freezed.dart';

@freezed
abstract class Roommate implements _$Roommate {
  const Roommate._();

  const factory Roommate({
    @required UniqueId id,
    @required RoommateUserName username,
    @required RoommateNickName nickname,
  }) = _Roommate;

  factory Roommate.empty() => Roommate(
        id: UniqueId(),
        username: RoommateUserName(""),
        nickname: RoommateNickName(""),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return username.value.fold((f) => some(f), (_) => none());
  }
}
