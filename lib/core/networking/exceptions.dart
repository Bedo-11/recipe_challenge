class Exceptions implements Exception {
  final String? _message;
  final String? _prefix;

  Exceptions([this._message, this._prefix]);

  @override
  String toString() {
    return "$_prefix$_message";
  }
}

class FetchDataFailure extends Exceptions {
  FetchDataFailure([String? message])
      : super(message, "Error During Communication: ");
}

class BadRequestFailure extends Exceptions {
  BadRequestFailure([message]) : super(message, "Invalid Request: ");
}

class UnauthorisedFailure extends Exceptions {
  UnauthorisedFailure([message]) : super(message, "Unauthorised: ");
}

class InvalidInputFailure extends Exceptions {
  InvalidInputFailure([String? message]) : super(message, "Invalid Input: ");
}
