import 'package:fpdart/fpdart.dart';
import 'package:gbikudus_notification/core/use_case.dart';
import 'package:gbikudus_notification/domain/repositories/church_event_notification_repository.dart';
import 'package:gbikudus_notification/domain/use_cases/send_church_event_notification.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../../fpdart_util.dart';

class MockChurchEventRepository extends Mock implements ChurchEventRepository {}

void main() {
  late MockChurchEventRepository mockChurchEventRepository;
  late SendChurchEventNotification useCase;

  setUp(() {
    mockChurchEventRepository = MockChurchEventRepository();
    useCase = SendChurchEventNotification(
      churchEventRepository: mockChurchEventRepository,
    );
  });

  test('should sync and send church events from the repository', () async {
    // arrange
    when(() => mockChurchEventRepository.syncChurchEvents())
        .thenAnswer((_) async => const Right(null));
    when(() => mockChurchEventRepository.sendChurchEventNotification())
        .thenAnswer((_) async => const Right(null));
    // act
    final result = await useCase(const NoParams());
    // assert
    expect(result, isRightThat(isA<void>()));
    verify(() => mockChurchEventRepository.syncChurchEvents());
    verify(() => mockChurchEventRepository.sendChurchEventNotification());
  });
}
