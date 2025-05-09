import 'package:fpdart/fpdart.dart';

/// Defines a function type that takes one argument of type [T] and returns
/// a value of type [R].
typedef Function1<T, R> = R Function(T t);

/// Defines an extension on [Either] that allows chaining operations on the
/// right side of the either.
extension EitherFutureX<L, R1> on Future<Either<L, R1>> {
  /// Chains a function that takes a value of type [R1] and returns a
  /// [Future<Either<L, R2>>] to the right side of the either.
  Future<Either<L, R2>> chain<R2>(
    Function1<R1, Future<Either<L, R2>>> f,
  ) async {
    return (await this).fold(left, f);
  }
}
