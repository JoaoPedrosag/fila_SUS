import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:fila_antendimento/src/configuration/domain/external/queue_firestore_datasource.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('queue firestore GetAllQueues', () async {
    final firestore = FakeFirebaseFirestore();
    await firestore.collection('queue').add(
      {
        'id': '1',
        'title': 'title',
        'priority': 1,
        'abbr': 'sd',
        'orders': [
          {
            'id': 'das',
            'position': 1,
            'timestamp': '2020-01-01 18:37:00.000',
            'status': 'inProgress',
          },
        ],
      },
    );

    final datasource = QueueFirestoreDatasource(firestore);
    final result = datasource.GetAllQueues();
    expect(result, emits(isA<List<Map>>()));
  });
}
