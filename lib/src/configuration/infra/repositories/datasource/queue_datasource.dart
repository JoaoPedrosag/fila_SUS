import 'package:fila_antendimento/src/configuration/domain/entities/queue_entity.dart';

abstract class IQueueDatasource {
  Stream<List<Map>> getAllQueues();
  Future<void> addQueue(QueueEntity queue);
}
