import 'package:fpdart/fpdart.dart';
import 'package:gbikudus_notification/core/failures.dart';
import 'package:gbikudus_notification/core/use_case.dart';
import 'package:gbikudus_notification/domain/entities/church_event.dart';
import 'package:gbikudus_notification/domain/repositories/church_event_notification_repository.dart';

/// Defines the use case for listing local-stored church events.
class ListChurchEvents extends UseCase<List<ChurchEvent>, NoParams> {
  /// Create an instance of [ListChurchEvents] use case.
  ListChurchEvents({
    required this.churchEventRepository,
  });

  /// Should be provided with [ChurchEventRepository] implementation
  final ChurchEventRepository churchEventRepository;

  @override
  Future<Either<Failure, List<ChurchEvent>>> call(NoParams params) {
    return churchEventRepository.getChurchEvents();
  }
}
