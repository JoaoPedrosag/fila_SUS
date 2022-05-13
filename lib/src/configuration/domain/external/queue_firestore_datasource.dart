import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fila_antendimento/src/configuration/domain/entities/queue_entity.dart';
import 'package:fila_antendimento/src/configuration/infra/adapters/json_to_queue.dart';
import 'package:fila_antendimento/src/configuration/infra/repositories/datasource/queue_datasource.dart';

class QueueFirestoreDatasource implements IQueueDatasource {
  final FirebaseFirestore firestore;

  QueueFirestoreDatasource(this.firestore);
  @override
  Stream<List<Map>> getAllQueues() {
    final ref = firestore.collection('queue');
    final snapshot = ref.orderBy('priority', descending: true).snapshots();

    return snapshot.map((e) => e.docs).map(_convert);
  }

  List<Map> _convert(List<QueryDocumentSnapshot<Map<String, dynamic>>> docs) {
    return docs
        .map(
          (document) => {
            'id': document.id,
            ...document.data(),
          },
        )
        .toList();
  }

  @override
  Future<void> addQueue(QueueEntity queue) async {
    final ref = firestore.collection('queue');
    final map = JsonToQueue.fromMap(queue);
    //// 59
  }
}
