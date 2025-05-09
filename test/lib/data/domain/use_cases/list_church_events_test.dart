import 'package:fpdart/fpdart.dart';
import 'package:gbikudus_notification/core/use_case.dart';
import 'package:gbikudus_notification/domain/entities/church_event_notification.dart';
import 'package:gbikudus_notification/domain/repositories/church_event_notification_repository.dart';
import 'package:gbikudus_notification/domain/use_cases/list_church_events.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../../fpdart_util.dart';

class MockChurchEventRepository extends Mock implements ChurchEventRepository {}

void main() {
  late MockChurchEventRepository mockChurchEventRepository;
  late ListChurchEvents useCase;

  setUp(() {
    mockChurchEventRepository = MockChurchEventRepository();
    useCase = ListChurchEvents(
      churchEventRepository: mockChurchEventRepository,
    );
  });

  test('should list church events from the repository', () async {
    // arrange
    when(() => mockChurchEventRepository.getChurchEvents())
        .thenAnswer((_) async => const Right([]));
    // act
    final result = await useCase(const NoParams());
    // assert
    expect(result, isRightThat(isA<List<ChurchEventNotification>>()));
    verify(() => mockChurchEventRepository.getChurchEvents());
  });
}
