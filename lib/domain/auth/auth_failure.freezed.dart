// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$AuthFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result canceledByUser(),
    @required Result serverError(),
    @required Result emailAlreadyInUse(),
    @required Result invalidEmailPasswordCombination(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result canceledByUser(),
    Result serverError(),
    Result emailAlreadyInUse(),
    Result invalidEmailPasswordCombination(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result canceledByUser(CanceledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        Result invalidEmailPasswordCombination(
            InvalidEmailPasswordCombination value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result canceledByUser(CanceledByUser value),
    Result serverError(ServerError value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result invalidEmailPasswordCombination(
        InvalidEmailPasswordCombination value),
    @required Result orElse(),
  });
}

class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

  CanceledByUser canceledByUser() {
    return const CanceledByUser();
  }

  ServerError serverError() {
    return const ServerError();
  }

  EmailAlreadyInUse emailAlreadyInUse() {
    return const EmailAlreadyInUse();
  }

  InvalidEmailPasswordCombination invalidEmailPasswordCombination() {
    return const InvalidEmailPasswordCombination();
  }
}

const $AuthFailure = _$AuthFailureTearOff();

class _$CanceledByUser implements CanceledByUser {
  const _$CanceledByUser();

  @override
  String toString() {
    return 'AuthFailure.canceledByUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CanceledByUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result canceledByUser(),
    @required Result serverError(),
    @required Result emailAlreadyInUse(),
    @required Result invalidEmailPasswordCombination(),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailPasswordCombination != null);
    return canceledByUser();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result canceledByUser(),
    Result serverError(),
    Result emailAlreadyInUse(),
    Result invalidEmailPasswordCombination(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (canceledByUser != null) {
      return canceledByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result canceledByUser(CanceledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        Result invalidEmailPasswordCombination(
            InvalidEmailPasswordCombination value),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailPasswordCombination != null);
    return canceledByUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result canceledByUser(CanceledByUser value),
    Result serverError(ServerError value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result invalidEmailPasswordCombination(
        InvalidEmailPasswordCombination value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (canceledByUser != null) {
      return canceledByUser(this);
    }
    return orElse();
  }
}

abstract class CanceledByUser implements AuthFailure {
  const factory CanceledByUser() = _$CanceledByUser;
}

class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result canceledByUser(),
    @required Result serverError(),
    @required Result emailAlreadyInUse(),
    @required Result invalidEmailPasswordCombination(),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailPasswordCombination != null);
    return serverError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result canceledByUser(),
    Result serverError(),
    Result emailAlreadyInUse(),
    Result invalidEmailPasswordCombination(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result canceledByUser(CanceledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        Result invalidEmailPasswordCombination(
            InvalidEmailPasswordCombination value),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailPasswordCombination != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result canceledByUser(CanceledByUser value),
    Result serverError(ServerError value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result invalidEmailPasswordCombination(
        InvalidEmailPasswordCombination value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthFailure {
  const factory ServerError() = _$ServerError;
}

class _$EmailAlreadyInUse implements EmailAlreadyInUse {
  const _$EmailAlreadyInUse();

  @override
  String toString() {
    return 'AuthFailure.emailAlreadyInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmailAlreadyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result canceledByUser(),
    @required Result serverError(),
    @required Result emailAlreadyInUse(),
    @required Result invalidEmailPasswordCombination(),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailPasswordCombination != null);
    return emailAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result canceledByUser(),
    Result serverError(),
    Result emailAlreadyInUse(),
    Result invalidEmailPasswordCombination(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result canceledByUser(CanceledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        Result invalidEmailPasswordCombination(
            InvalidEmailPasswordCombination value),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailPasswordCombination != null);
    return emailAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result canceledByUser(CanceledByUser value),
    Result serverError(ServerError value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result invalidEmailPasswordCombination(
        InvalidEmailPasswordCombination value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class EmailAlreadyInUse implements AuthFailure {
  const factory EmailAlreadyInUse() = _$EmailAlreadyInUse;
}

class _$InvalidEmailPasswordCombination
    implements InvalidEmailPasswordCombination {
  const _$InvalidEmailPasswordCombination();

  @override
  String toString() {
    return 'AuthFailure.invalidEmailPasswordCombination()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidEmailPasswordCombination);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result canceledByUser(),
    @required Result serverError(),
    @required Result emailAlreadyInUse(),
    @required Result invalidEmailPasswordCombination(),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailPasswordCombination != null);
    return invalidEmailPasswordCombination();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result canceledByUser(),
    Result serverError(),
    Result emailAlreadyInUse(),
    Result invalidEmailPasswordCombination(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmailPasswordCombination != null) {
      return invalidEmailPasswordCombination();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result canceledByUser(CanceledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        Result invalidEmailPasswordCombination(
            InvalidEmailPasswordCombination value),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailPasswordCombination != null);
    return invalidEmailPasswordCombination(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result canceledByUser(CanceledByUser value),
    Result serverError(ServerError value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result invalidEmailPasswordCombination(
        InvalidEmailPasswordCombination value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmailPasswordCombination != null) {
      return invalidEmailPasswordCombination(this);
    }
    return orElse();
  }
}

abstract class InvalidEmailPasswordCombination implements AuthFailure {
  const factory InvalidEmailPasswordCombination() =
      _$InvalidEmailPasswordCombination;
}
