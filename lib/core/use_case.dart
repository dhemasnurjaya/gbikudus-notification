import 'package:equatable/equatable.dart';
import 'package:fpdart/fpdart.dart';
import 'package:gbikudus_notification/core/failures.dart';

/// [Type] is the return type of a successful use case call.
/// [Params] are the parameters that are required to call the use case.
// ignore: one_member_abstracts
abstract class UseCase<Type, Params> {
  /// Execute the use case
  Future<Either<Failure, Type>> call(Params params);
}

/// Empty parameters to use with use cases that don't require any parameters.
class NoParams extends Equatable {
  /// Creates an instance of [NoParams].
  const NoParams();

  @override
  List<Object?> get props => [];
}
