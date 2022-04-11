import 'package:fila_antendimento/src/configuration/domain/entities/queue_entity.dart';
import 'package:fila_antendimento/src/configuration/domain/repositories/queue_repository.dart';
import 'package:fila_antendimento/src/configuration/domain/usecases/get_all_queues.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class QueueRepositoryMock extends Mock implements IQueueRepository {}

class QueueEntityMock extends Mock implements QueueEntity {}

void main() {
  test('deve retornar uma lista de QueueEntiry', () {
    final repository = QueueRepositoryMock();
    final entity = QueueEntityMock();
    when(() => repository.GetAllQueues())
        .thenAnswer((_) => Stream.value([entity]));
    final usecase = GetAllQueues(repository);
    final result = usecase.call();

    expect(result, emits(isA<List<QueueEntity>>()));
  });
}
