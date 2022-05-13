import 'package:fila_antendimento/src/configuration/domain/entities/queue_entity.dart';
import 'package:fila_antendimento/src/configuration/domain/usecases/get_all_queues.dart';

abstract class IQueueRepository {
  Stream<List<QueueEntity>> GetAllQueues();

  Future<void> addQueue(QueueEntity queue);
}
