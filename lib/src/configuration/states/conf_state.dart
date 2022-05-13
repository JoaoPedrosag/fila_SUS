import 'package:fila_antendimento/src/configuration/domain/entities/queue_entity.dart';

abstract class ConfigurationState {}

class EmptyConfigurationState extends ConfigurationState {}

class LoadingConfigurationState extends ConfigurationState {}

class LoadedConfigurationState extends ConfigurationState {
  final List<QueueEntity> queues;

  LoadedConfigurationState(this.queues);
}

class ExceptionConfState extends ConfigurationState {
  final String message;

  ExceptionConfState(this.message);
}
