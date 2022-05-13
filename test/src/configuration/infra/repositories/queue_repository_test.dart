import 'package:fila_antendimento/src/configuration/domain/entities/queue_entity.dart';
import 'package:fila_antendimento/src/configuration/infra/repositories/queue_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../mocks/mocks.dart';

void main() {
  test('queue repostiory GetAllQueues', () {
    final datasource = IQueueDatasourceMock();
    when(() => datasource.getAllQueues()).thenAnswer(
      (_) => Stream.value(
        [
          {
            'id': '1',
            'title': 'title',
            'priority': 1,
            'abbr': 'sd',
            'orders': [
              {
                'id': 'das',
                'position': 1,
                'timestamp': '2020-01-01 18:37:00.000',
                'status': 'inProgress',
              },
            ],
          },
        ],
      ),
    );
    final repositoy = QueueRepository(datasource);
    final result = repositoy.GetAllQueues();

    expect(result, emits(isA<List<QueueEntity>>()));
  });

  test('deve adicionar uma nova queue', () {
    final datasource = IQueueDatasourceMock();
    final queue = QueueEntityMock();
    when(() => datasource.addQueue(queue))
        .thenAnswer((invocation) => Future.value());
    final repository = QueueRepository(datasource);
    expect(repository.addQueue(queue), completes);
  });
}
