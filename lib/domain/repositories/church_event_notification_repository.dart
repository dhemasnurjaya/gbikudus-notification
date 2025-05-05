import 'package:fpdart/fpdart.dart';
import 'package:gbikudus_notification/core/failures.dart';
import 'package:gbikudus_notification/domain/entities/church_event_notification.dart';

/// Defines required methods for the church event repository.
/// Combining both the local and remote data sources.
abstract class ChurchEventRepository {
  /// Fetches church events from the remote data source and
  /// saves them to the local database.
  Future<Either<Failure, void>> syncChurchEvents();

  /// Fetches church events from the local database.
  Future<Either<Failure, List<ChurchEventNotification>>> getChurchEvents();

  /// Sends church event notifications to the users.
  Future<Either<Failure, void>> sendChurchEventNotification();
}
