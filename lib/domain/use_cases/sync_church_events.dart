import 'package:fpdart/fpdart.dart';
import 'package:gbikudus_notification/core/failures.dart';
import 'package:gbikudus_notification/core/use_case.dart';
import 'package:gbikudus_notification/domain/repositories/church_event_notification_repository.dart';

/// Defines the use case for syncing church events.
class SyncChurchEvents extends UseCase<void, NoParams> {
  /// Create an instance of [SyncChurchEvents] use case.
  SyncChurchEvents({
    required this.churchEventRepository,
  });

  /// Should be provided with [ChurchEventRepository] implementation
  final ChurchEventRepository churchEventRepository;

  @override
  Future<Either<Failure, void>> call(NoParams params) {
    return churchEventRepository.syncChurchEvents();
  }
}
