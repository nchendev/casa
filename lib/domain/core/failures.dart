import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  // target room doesn't exist
  const factory ValueFailure.invalidRoom({
    @required T failedValue,
  }) = InvalidRoom<T>;
  // at room limit
  const factory ValueFailure.exceededRoomLimit({
    @required T failedValue,
    @required int roomLimit,
  }) = ExceededRoomLimit<T>;

  const factory ValueFailure.exceedingLength({
    @required T failedValue,
    @required int max,
  }) = ExceedingLength<T>;
  const factory ValueFailure.empty({
    @required T failedValue,
  }) = Empty<T>;

  // target user doesn't exist
  const factory ValueFailure.invalidUser({
    @required T failedValue,
  }) = InvalidUser<T>;
  // at roommate limit
  const factory ValueFailure.exceededRoommateLimit({
    @required T failedValue,
    @required int roommateLimit,
  }) = ExceededRoommateLimit<T>;
  // target user not open to invites
  const factory ValueFailure.notOpenToRoomInvites({
    @required T failedValue,
  }) = NotOpenToRoomInvites<T>;

  const factory ValueFailure.invalidEmail({
    @required T failedValue,
  }) = InvalidEmail<T>;
  const factory ValueFailure.invalidPassword({
    @required T failedValue,
  }) = ShortPassword<T>;
}
