import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fila_antendimento/src/configuration/domain/external/queue_firestore_datasource.dart';
import 'package:fila_antendimento/src/configuration/domain/repositories/queue_repository.dart';
import 'package:fila_antendimento/src/configuration/domain/usecases/get_all_queues.dart';
import 'package:fila_antendimento/src/configuration/infra/repositories/datasource/queue_datasource.dart';
import 'package:fila_antendimento/src/configuration/infra/repositories/queue_repository.dart';
import 'package:provider/provider.dart';

final queueModule = [
  Provider<FirebaseFirestore>.value(
    value: FirebaseFirestore.instance,
  ),
  Provider<IQueueDatasource>(
      create: (context) => QueueFirestoreDatasource(context.read())),
  Provider<IQueueRepository>(
      create: (context) => QueueRepository(context.read())),
  Provider<IGetAllQueues>(create: (context) => GetAllQueues(context.read())),
];
