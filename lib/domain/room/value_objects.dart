import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:lowkey/domain/core/failures.dart';
import 'package:lowkey/domain/core/value_objects.dart';
import 'package:lowkey/domain/core/value_validators.dart';

class RoomName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 30;

  factory RoomName(String input) {
    assert(input != null);
    return RoomName._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const RoomName._(this.value);
}

class RoommateUserName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 30;

  factory RoommateUserName(String input) {
    assert(input != null);
    return RoommateUserName._(
      validateMaxStringLength(input, maxLength)
          .flatMap(validateStringNotEmpty)
          .flatMap(validateUser),
    );
  }

  const RoommateUserName._(this.value);
}

class RoommateNickName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 30;

  factory RoommateNickName(String input) {
    assert(input != null);
    return RoommateNickName._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const RoommateNickName._(this.value);
}

//TODO: Might not even be used in creation of new rm? Would be fb call maybe
class RoommateList<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;

  static const roommateLimit = 4; //TODO: should be determined from db

  factory RoommateList(KtList<T> input) {
    assert(input != null);
    return RoommateList._(validateRoommateLimit(input, roommateLimit));
  }

  const RoommateList._(this.value);

  int get length {
    return value.getOrElse(() => emptyList()).size;
  }

  bool get isFull {
    return length == roommateLimit;
  }
}
