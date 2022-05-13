import 'package:fila_antendimento/src/configuration/domain/entities/queue_entity.dart';
import 'package:fila_antendimento/src/configuration/domain/repositories/queue_repository.dart';

abstract class IAddNewQueue {
  Future<void> call(QueueEntity queue);
}

class AddNewQueue implements IAddNewQueue {
  final IQueueRepository repository;

  AddNewQueue(this.repository);
  @override
  Future<void> call(QueueEntity queue) async {
    return repository.addQueue(queue);
  }
}
