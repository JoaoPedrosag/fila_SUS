import 'package:fila_antendimento/src/configuration/domain/entities/queue_entity.dart';

abstract class ConfEvent {}

class AddQueues implements ConfEvent {
  final List<QueueEntity> queues;

  AddQueues(this.queues);
}
