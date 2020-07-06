import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:lowkey/domain/auth/value_objects.dart';
import 'package:lowkey/domain/core/failures.dart';

Either<ValueFailure<String>, String> validateRoom(String input) {
  // check if room exists in the database
  // TODO: ..., for now just accept
  if (true) {
    return right(input);
  } else {
    return left(
      ValueFailure.invalidRoom(failedValue: input),
    );
  }
}

Either<ValueFailure<KtList<T>>, KtList<T>> validateRoomLimit<T>(
    KtList<T> input, int roomLimit) {
  // check to make sure user can still add room
  if (input.size < roomLimit) {
    return right(input);
  } else {
    return left(
      ValueFailure.exceededRoomLimit(failedValue: input, roomLimit: roomLimit),
    );
  }
}

Either<ValueFailure<String>, String> validateMaxStringLength(
  String input,
  int maxLength,
) {
  // checks to make sure input length is within limits
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(
      ValueFailure.exceedingLength(failedValue: input, max: maxLength),
    );
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  // checks to make sure input is not empty
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateUser(String input) {
  // check if user exists in the database
  // TODO: ..., for now just accept
  if (true) {
    return right(input);
  } else {
    return left(
      ValueFailure.invalidUser(failedValue: input),
    );
  }
}

Either<ValueFailure<KtList<T>>, KtList<T>> validateRoommateLimit<T>(
    KtList<T> input, int roommateLimit) {
  // check to make sure user can still add roommates to room
  if (input.size < roommateLimit) {
    return right(input);
  } else {
    return left(
      ValueFailure.exceededRoommateLimit(
          failedValue: input, roommateLimit: roommateLimit),
    );
  }
}

Either<ValueFailure<String>, String> validateOpenToRoomInvites(String input) {
  // check if user is open to new room invites
  // TODO: ..., for now just accept
  if (true) {
    return right(input);
  } else {
    return left(
      ValueFailure.notOpenToRoomInvites(failedValue: input),
    );
  }
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex = r"\S+@\S+";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  /*
  At least one digit [0-9]
  At least one lowercase character [a-z]
  At least one uppercase character [A-Z]
  At least one special character [*.!@#$%^&(){}[]:;<>,.?/~_+-=|\]
  At least 8 characters in length, but no more than 32.
  */
  /*
  ^                                       Match the beginning of the string
  (?=.*[0-9])                             Require that at least one digit appear anywhere in the string
  (?=.*[a-z])                             Require that at least one lowercase letter appear anywhere in the string
  (?=.*[A-Z])                             Require that at least one uppercase letter appear anywhere in the string
  (?=.*[*.!@$%^&(){}[]:;<>,.?/~_+-=|\])   Require that at least one special character appear anywhere in the string
  .{8,32}                                 The password must be at least 8 characters long, but no more than 32
  $                                       Match the end of the string.
  */
  const passwordRegex =
      r"^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[*.!@$%^&(){}[]:;<>,.?/~_+-=|\]).{8,32}$";
  if (RegExp(passwordRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPassword(failedValue: input));
  }
}
