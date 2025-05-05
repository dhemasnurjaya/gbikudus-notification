/// An interface for time-related operations.
// ignore: one_member_abstracts
abstract class Time {
  /// Returns the current time.
  DateTime now();
}

/// A concrete implementation of the [Time] interface.
class TimeImpl implements Time {
  /// Creates a new instance of [TimeImpl].
  const TimeImpl();

  @override
  DateTime now() => DateTime.now();
}
