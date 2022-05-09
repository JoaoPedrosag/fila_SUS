import 'package:fila_antendimento/src/configuration/domain/entities/queue_entity.dart';

abstract class ConfState {}

class EmptyConfState extends ConfState {}

class LoadedConfState extends ConfState {
  final List<QueueEntity> queues;

  LoadedConfState(this.queues);
}

class ExceptionConfState extends ConfState {
  final String message;

  ExceptionConfState(this.message);
}
