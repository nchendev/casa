import 'package:dartz/dartz.dart';
import 'package:lowkey/domain/auth/value_objects.dart';
import 'package:lowkey/domain/core/failures.dart';

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
