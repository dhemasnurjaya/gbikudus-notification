import 'package:fpdart/fpdart.dart';
import 'package:gbikudus_notification/core/failures.dart';
import 'package:gbikudus_notification/domain/entities/church_event.dart';

/// Defines required methods for the church event repository.
/// Combining both the local and remote data sources.
abstract class ChurchEventRepository {
  /// Fetches church events from the remote data source and
  /// saves them to the local database.
  Future<Either<Failure, void>> syncChurchEvents();

  /// Fetches church events from the local database.
  Future<Either<Failure, List<ChurchEvent>>> getChurchEvents();
}
