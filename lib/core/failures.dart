import 'package:equatable/equatable.dart';

/// Base class for all failures in the application.
abstract class Failure extends Equatable {
  /// Create a [Failure] instance with an optional [message] and [cause].
  const Failure({this.message = '', this.cause});

  /// The message associated with the failure.
  final String message;

  /// The cause of the failure, if any.
  final Exception? cause;

  @override
  List<Object?> get props => [message, cause];
}

/// Failure occurring on the server
class ServerFailure extends Failure {
  /// Create a [ServerFailure] instance with an optional [message] and [cause].
  const ServerFailure({super.message = '', super.cause});
}

/// Failure occurring in the cache layer
class CacheFailure extends Failure {
  /// Create a [CacheFailure] instance with an optional [message] and [cause].
  const CacheFailure({super.message = '', super.cause});
}
