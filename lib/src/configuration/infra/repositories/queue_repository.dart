import 'package:fila_antendimento/src/configuration/domain/entities/queue_entity.dart';
import 'package:fila_antendimento/src/configuration/domain/repositories/queue_repository.dart';
import 'package:fila_antendimento/src/configuration/infra/adapters/json_to_queue.dart';
import 'package:fila_antendimento/src/configuration/infra/repositories/datasource/queue_datasource.dart';

class QueueRepository implements IQueueRepository {
  final IQueueDatasource datasource;

  QueueRepository(this.datasource);
  @override
  Stream<List<QueueEntity>> GetAllQueues() {
    final stream = datasource.getAllQueues();

    return stream.map(_convert);
  }

  List<QueueEntity> _convert(List<Map> list) {
    return list.map(JsonToQueue.fromMap).toList();
  }

  @override
  Future<void> addQueue(QueueEntity queue) async {
    await datasource.addQueue(queue);
  }
}
