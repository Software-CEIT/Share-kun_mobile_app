import 'package:equatable/equatable.dart';

abstract class CustomException extends Equatable implements Exception {
  final String message;
  const CustomException(this.message);
  @override
  List<Object?> get props => [message];
}

class ServerException extends CustomException {
  final int? code;
  const ServerException(super.message, {this.code});

  @override
  String toString() {
    return message;
  }
}

class CachedException extends CustomException {
  const CachedException(super.message);
  @override
  String toString() {
    return super.message.toString();
  }
}
