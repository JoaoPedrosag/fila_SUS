import 'package:fila_antendimento/src/configuration/domain/usecases/add_new_queue.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../mocks/mocks.dart';

void main() {
  test('deve adicionar uma queueEntity', () {
    final repository = QueueRepositoryMock();
    final queue = QueueEntityMock();
    when(() => repository.addQueue(queue)).thenAnswer((_) => Future.value());
    final usecase = AddNewQueue(repository);

    expect(usecase.call(queue), completes);
  });
}
