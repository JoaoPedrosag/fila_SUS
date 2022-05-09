import 'package:fila_antendimento/src/configuration/domain/entities/queue_entity.dart';
import 'package:fila_antendimento/src/configuration/domain/repositories/queue_repository.dart';
import 'package:fila_antendimento/src/configuration/domain/usecases/get_all_queues.dart';
import 'package:fila_antendimento/src/configuration/infra/repositories/datasource/queue_datasource.dart';
import 'package:mocktail/mocktail.dart';

class QueueRepositoryMock extends Mock implements IQueueRepository {}

class QueueEntityMock extends Mock implements QueueEntity {}

class IQueueDatasourceMock extends Mock implements IQueueDatasource {}

class IGetAllQueusMock extends Mock implements IGetAllQueues {}
