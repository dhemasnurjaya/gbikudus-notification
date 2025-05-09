import 'package:fpdart/fpdart.dart';
import 'package:gbikudus_notification/core/use_case.dart';
import 'package:gbikudus_notification/domain/repositories/church_event_notification_repository.dart';
import 'package:gbikudus_notification/domain/use_cases/sync_church_events.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../../fpdart_util.dart';

class MockChurchEventRepository extends Mock implements ChurchEventRepository {}

void main() {
  late MockChurchEventRepository mockChurchEventRepository;
  late SyncChurchEvents useCase;

  setUp(() {
    mockChurchEventRepository = MockChurchEventRepository();
    useCase = SyncChurchEvents(
      churchEventRepository: mockChurchEventRepository,
    );
  });

  test('should sync church events from the repository', () async {
    // arrange
    when(() => mockChurchEventRepository.syncChurchEvents())
        .thenAnswer((_) async => const Right(null));
    // act
    final result = await useCase(const NoParams());
    // assert
    expect(result, isRightThat(isA<void>()));
    verify(() => mockChurchEventRepository.syncChurchEvents());
  });
}
