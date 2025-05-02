import 'package:gbikudus_notification/core/network.dart';
import 'package:gbikudus_notification/data/remote/data_sources/church_event_remote_data_source.dart';
import 'package:gbikudus_notification/data/remote/models/church_event_model.dart';
import 'package:gbikudus_notification/data/remote/models/directus_response.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../../fixture_reader.dart';

class MockNetwork extends Mock implements Network {}

void main() {
  late MockNetwork mockNetwork;
  late ChurchEventRemoteDataSource dataSource;

  setUp(() {
    mockNetwork = MockNetwork();
    dataSource = ChurchEventRemoteDataSourceImpl(network: mockNetwork);
  });

  test('should get church events from the network', () async {
    // arrange
    final tResponse = fixture('church_events.json');
    when(
      () => mockNetwork.get(any(), any(), queries: any(named: 'queries')),
    ).thenAnswer((_) async => tResponse);
    // act
    final result = await dataSource.getChurchEvents();
    // assert
    expect(result, isA<DirectusResponse<ChurchEventModel>>());
    verify(() => mockNetwork.get(any(), any(), queries: any(named: 'queries')));
  });
}
